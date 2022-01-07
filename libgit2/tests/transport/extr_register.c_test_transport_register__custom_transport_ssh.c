
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_transport ;


 unsigned int ARRAY_SIZE (char const**) ;
 TYPE_1__ _transport ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int) ;
 int cl_git_pass (int ) ;
 int dummy_transport ;
 int git_transport_new (TYPE_1__**,int *,char const*) ;
 int git_transport_register (char*,int ,int *) ;
 int git_transport_unregister (char*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

void test_transport_register__custom_transport_ssh(void)
{
 const char *urls[] = {
  "ssh://somehost:somepath",
  "ssh+git://somehost:somepath",
  "git+ssh://somehost:somepath",
  "git@somehost:somepath",
  "ssh://somehost:somepath%20with%20%spaces",
  "ssh://somehost:somepath with spaces"
 };
 git_transport *transport;
 unsigned i;

 for (i = 0; i < ARRAY_SIZE(urls); i++) {

  cl_git_fail_with(git_transport_new(&transport, ((void*)0), urls[i]), -1);




 }

 cl_git_pass(git_transport_register("ssh", dummy_transport, ((void*)0)));

 cl_git_pass(git_transport_new(&transport, ((void*)0), "git@somehost:somepath"));

 cl_assert(transport == &_transport);

 cl_git_pass(git_transport_unregister("ssh"));

 for (i = 0; i < ARRAY_SIZE(urls); i++) {

  cl_git_fail_with(git_transport_new(&transport, ((void*)0), urls[i]), -1);




 }
}
