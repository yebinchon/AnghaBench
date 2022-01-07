
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_stash_apply_options ;


 int GIT_ECONFLICT ;
 int GIT_ENOTFOUND ;
 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ;
 int GIT_STASH_APPLY_REINSTATE_INDEX ;
 int GIT_STATUS_CURRENT ;
 int assert_status (int ,char*,int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_repo_commit_from_index (int *,int ,int ,int ,char*) ;
 int git_index_add_bypath (int ,char*) ;
 int git_index_has_conflicts (int ) ;
 int git_index_write (int ) ;
 int git_stash_apply (int ,int ,TYPE_1__*) ;
 int repo ;
 int repo_index ;
 int signature ;

void test_stash_apply__conflict_index_with_reinstate_index(void)
{
 git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;

 opts.flags = GIT_STASH_APPLY_REINSTATE_INDEX;

 cl_git_rewritefile("stash/who", "nothing\n");
 cl_git_pass(git_index_add_bypath(repo_index, "who"));
 cl_git_pass(git_index_write(repo_index));
 cl_repo_commit_from_index(((void*)0), repo, signature, 0, "Other commit");

 cl_git_fail_with(git_stash_apply(repo, 0, &opts), GIT_ECONFLICT);

 cl_assert_equal_i(git_index_has_conflicts(repo_index), 0);
 assert_status(repo, "what", GIT_STATUS_CURRENT);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_CURRENT);
 assert_status(repo, "when", GIT_ENOTFOUND);
 assert_status(repo, "why", GIT_ENOTFOUND);
}
