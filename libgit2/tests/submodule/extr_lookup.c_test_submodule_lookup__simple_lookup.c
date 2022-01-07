
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int assert_submodule_exists (int ,char*) ;
 int g_repo ;
 int refute_submodule_exists (int ,char*,int ) ;

void test_submodule_lookup__simple_lookup(void)
{
 assert_submodule_exists(g_repo, "sm_unchanged");


 assert_submodule_exists(g_repo, "sm_added_and_uncommited");


 assert_submodule_exists(g_repo, "sm_gitmodules_only");


 refute_submodule_exists(g_repo, "not-submodule", GIT_EEXISTS);


 refute_submodule_exists(g_repo, "just_a_dir", GIT_ENOTFOUND);


 refute_submodule_exists(g_repo, "just_a_file", GIT_ENOTFOUND);


 refute_submodule_exists(g_repo, "no_such_file", GIT_ENOTFOUND);


 assert_submodule_exists(g_repo, "sm_added_and_uncommited/");
}
