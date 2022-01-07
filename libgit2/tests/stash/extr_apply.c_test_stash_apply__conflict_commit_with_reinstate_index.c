
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_stash_apply_options ;
typedef int git_index_entry ;


 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ;
 int GIT_STASH_APPLY_REINSTATE_INDEX ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_INDEX_MODIFIED ;
 int GIT_STATUS_INDEX_NEW ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_repo_commit_from_index (int *,int ,int ,int ,char*) ;
 int git_index_add_bypath (int ,char*) ;
 int git_index_conflict_get (int const**,int const**,int const**,int ,char*) ;
 int git_index_has_conflicts (int ) ;
 int git_stash_apply (int ,int ,TYPE_1__*) ;
 int repo ;
 int repo_index ;
 int signature ;

void test_stash_apply__conflict_commit_with_reinstate_index(void)
{
 git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;
 const git_index_entry *ancestor;
 const git_index_entry *our;
 const git_index_entry *their;

 opts.flags = GIT_STASH_APPLY_REINSTATE_INDEX;

 cl_git_rewritefile("stash/what", "ciao\n");
 cl_git_pass(git_index_add_bypath(repo_index, "what"));
 cl_repo_commit_from_index(((void*)0), repo, signature, 0, "Other commit");

 cl_git_pass(git_stash_apply(repo, 0, &opts));

 cl_assert_equal_i(git_index_has_conflicts(repo_index), 1);
 cl_git_pass(git_index_conflict_get(&ancestor, &our, &their, repo_index, "what"));
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "why", GIT_STATUS_INDEX_NEW);
}
