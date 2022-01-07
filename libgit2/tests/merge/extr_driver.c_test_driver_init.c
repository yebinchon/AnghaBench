
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_merge_driver {int initialized; } ;
typedef int git_merge_driver ;



__attribute__((used)) static int test_driver_init(git_merge_driver *s)
{
 struct test_merge_driver *self = (struct test_merge_driver *)s;
 self->initialized = 1;
 return 0;
}
