
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_INDEX_NEW ;
 int GIT_STATUS_WT_MODIFIED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_index_has_conflicts (int ) ;
 int git_stash_apply (int ,int,int *) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int repo_index ;
 int signature ;

void test_stash_apply__uses_reflog_like_indices_1(void)
{
 git_oid oid;

 cl_git_mkfile("stash/untracked", "untracked\n");
 cl_git_pass(git_stash_save(&oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED));
 assert_status(repo, "untracked", GIT_ENOTFOUND);


 cl_git_pass(git_stash_apply(repo, 1, ((void*)0)));
 cl_assert_equal_i(git_index_has_conflicts(repo_index), 0);
 assert_status(repo, "what", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "why", GIT_STATUS_INDEX_NEW);
 assert_status(repo, "where", GIT_STATUS_INDEX_NEW);
}
