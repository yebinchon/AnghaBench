
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bare; } ;


 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_1__*) ;

void test_clone_nonetwork__local_bare(void)
{
 g_options.bare = 1;
 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));
}
