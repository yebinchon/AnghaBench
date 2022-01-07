
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule_ignore_t ;


 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_SUBMODULE_IGNORE_UNTRACKED ;
 unsigned int GIT_SUBMODULE_STATUS_INDEX_ADDED ;
 unsigned int GIT_SUBMODULE_STATUS_INDEX_MODIFIED ;
 int GIT_SUBMODULE_STATUS_IS_UNMODIFIED (unsigned int) ;
 unsigned int GIT_SUBMODULE_STATUS_WD_DELETED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_MODIFIED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ;
 unsigned int GIT_SUBMODULE_STATUS_WD_WD_MODIFIED ;
 int add_submodule_to_index (char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_futils_mkdir_relative (char*,char*,int,int ,int *) ;
 int git_submodule_status (unsigned int*,int ,char*,int ) ;
 int refute_submodule_exists (int ,char*,int ) ;
 int rm_submodule (char*) ;

void test_submodule_status__ignore_untracked(void)
{
 unsigned int status;
 git_submodule_ignore_t ign = GIT_SUBMODULE_IGNORE_UNTRACKED;

 rm_submodule("sm_unchanged");

 refute_submodule_exists(g_repo, "just_a_dir", GIT_ENOTFOUND);
 refute_submodule_exists(g_repo, "not-submodule", GIT_EEXISTS);
 refute_submodule_exists(g_repo, "not", GIT_EEXISTS);

 cl_git_pass(git_submodule_status(&status, g_repo,"sm_changed_index", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED) != 0);

 cl_git_pass(git_submodule_status(&status, g_repo,"sm_changed_head", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_MODIFIED) != 0);

 cl_git_pass(git_submodule_status(&status, g_repo,"sm_changed_file", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_WD_MODIFIED) != 0);

 cl_git_pass(git_submodule_status(&status, g_repo,"sm_changed_untracked_file", ign));
 cl_assert(GIT_SUBMODULE_STATUS_IS_UNMODIFIED(status));

 cl_git_pass(git_submodule_status(&status, g_repo,"sm_missing_commits", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_MODIFIED) != 0);

 cl_git_pass(git_submodule_status(&status, g_repo,"sm_added_and_uncommited", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_INDEX_ADDED) != 0);


 cl_git_pass(git_submodule_status(&status, g_repo,"sm_unchanged", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_DELETED) != 0);


 cl_git_pass(git_futils_mkdir_relative("sm_unchanged", "submod2", 0755, 0, ((void*)0)));
 cl_git_pass(git_submodule_status(&status, g_repo,"sm_unchanged", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_WD_UNINITIALIZED) != 0);


 add_submodule_to_index("sm_changed_head");
 cl_git_pass(git_submodule_status(&status, g_repo,"sm_changed_head", ign));
 cl_assert((status & GIT_SUBMODULE_STATUS_INDEX_MODIFIED) != 0);
}
