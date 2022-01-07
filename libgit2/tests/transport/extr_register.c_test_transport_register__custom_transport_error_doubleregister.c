
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EEXISTS ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int dummy_transport ;
 int git_transport_register (char*,int ,int *) ;
 int git_transport_unregister (char*) ;

void test_transport_register__custom_transport_error_doubleregister(void)
{
 cl_git_pass(git_transport_register("something", dummy_transport, ((void*)0)));

 cl_git_fail_with(git_transport_register("something", dummy_transport, ((void*)0)), GIT_EEXISTS);

 cl_git_pass(git_transport_unregister("something"));
}
