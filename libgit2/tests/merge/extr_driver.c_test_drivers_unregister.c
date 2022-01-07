
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int git_merge_driver_unregister (char*) ;

__attribute__((used)) static void test_drivers_unregister(void)
{
 cl_git_pass(git_merge_driver_unregister("custom"));
 cl_git_pass(git_merge_driver_unregister("*"));
}
