
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GIT_SUBMODULE_STATUS_WD_MODIFIED ;
 int cl_assert_equal_i (unsigned int,unsigned int) ;
 int cl_git_pass (int ) ;
 int g_idx ;
 int g_repo ;
 int git_index_add_bypath (int ,char const*) ;
 int git_submodule_status (unsigned int*,int ,char const*,int ) ;

void test_index_bypath__add_submodule(void)
{
 unsigned int status;
 const char *sm_name = "sm_changed_head";

 cl_git_pass(git_submodule_status(&status, g_repo, sm_name, 0));
 cl_assert_equal_i(GIT_SUBMODULE_STATUS_WD_MODIFIED, status & GIT_SUBMODULE_STATUS_WD_MODIFIED);
 cl_git_pass(git_index_add_bypath(g_idx, sm_name));
 cl_git_pass(git_submodule_status(&status, g_repo, sm_name, 0));
 cl_assert_equal_i(0, status & GIT_SUBMODULE_STATUS_WD_MODIFIED);
}
