
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_transport ;


 int _transport ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int dummy_transport ;
 int git_transport_new (int **,int *,char*) ;
 int git_transport_register (char*,int ,int *) ;
 int git_transport_unregister (char*) ;

void test_transport_register__custom_transport(void)
{
 git_transport *transport;

 cl_git_pass(git_transport_register("something", dummy_transport, ((void*)0)));

 cl_git_pass(git_transport_new(&transport, ((void*)0), "something://somepath"));

 cl_assert(transport == &_transport);

 cl_git_pass(git_transport_unregister("something"));
}
