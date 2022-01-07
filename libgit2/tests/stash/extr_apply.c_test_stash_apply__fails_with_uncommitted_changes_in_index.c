
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int GIT_EUNCOMMITTED ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_INDEX_MODIFIED ;
 int assert_status (int ,char*,int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int git_index_add_bypath (int ,char*) ;
 int git_index_has_conflicts (int ) ;
 int git_index_write (int ) ;
 int git_stash_apply (int ,int ,int *) ;
 int repo ;
 int repo_index ;

void test_stash_apply__fails_with_uncommitted_changes_in_index(void)
{
 cl_git_rewritefile("stash/who", "nothing\n");
 cl_git_pass(git_index_add_bypath(repo_index, "who"));
 cl_git_pass(git_index_write(repo_index));

 cl_git_fail_with(git_stash_apply(repo, 0, ((void*)0)), GIT_EUNCOMMITTED);

 cl_assert_equal_i(git_index_has_conflicts(repo_index), 0);
 assert_status(repo, "what", GIT_STATUS_CURRENT);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "when", GIT_ENOTFOUND);
 assert_status(repo, "why", GIT_ENOTFOUND);
}
