
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_merge_driver {int shutdown; } ;
typedef int git_merge_driver ;



__attribute__((used)) static void test_driver_shutdown(git_merge_driver *s)
{
 struct test_merge_driver *self = (struct test_merge_driver *)s;
 self->shutdown = 1;
}
