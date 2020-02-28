//
//  main.m
//  Test
//
//  Created by Alan on 12/30/19.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Person *p1 = [Person alloc];
        Person *p2 = [Person alloc];
        Person *p3 = [p1 init];
        NSLog(@"%@",p1);
        NSLog(@"%@",p2);
        NSLog(@"%@",p3);
        NSLog(@"%p",&p1);
        NSLog(@"%p",&p2);
        NSLog(@"%p",&p3);

        
        
        NSLog(@"%zu",class_getInstanceSize([p1 class])); // 24?
        NSLog(@"%zu",malloc_size((__bridge const void *)(p1)));
    }
    return 0;
}
