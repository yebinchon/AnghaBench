
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remote_cb; } ;


 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int custom_origin_name_remote_create ;
 TYPE_1__ g_options ;
 int g_remote ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_1__*) ;
 int git_remote_lookup (int *,int ,char*) ;

void test_clone_nonetwork__custom_origin_name(void)
{
 g_options.remote_cb = custom_origin_name_remote_create;
 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));

 cl_git_pass(git_remote_lookup(&g_remote, g_repo, "my_origin"));
}
