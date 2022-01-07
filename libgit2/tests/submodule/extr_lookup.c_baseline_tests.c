
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EEXISTS ;
 int assert_submodule_exists (int ,char*) ;
 int g_repo ;
 int refute_submodule_exists (int ,char*,int ) ;

__attribute__((used)) static void baseline_tests(void)
{



 assert_submodule_exists(g_repo, "sm_unchanged");
 assert_submodule_exists(g_repo, "sm_gitmodules_only");
 refute_submodule_exists(g_repo, "not-submodule", GIT_EEXISTS);
}
