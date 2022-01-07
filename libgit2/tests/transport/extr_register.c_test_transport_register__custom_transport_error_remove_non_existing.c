
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int git_transport_unregister (char*) ;

void test_transport_register__custom_transport_error_remove_non_existing(void)
{
 cl_git_fail_with(git_transport_unregister("something"), GIT_ENOTFOUND);
}
