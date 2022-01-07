
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
struct TYPE_5__ {int checkout_strategy; } ;
struct TYPE_6__ {TYPE_1__ checkout_opts; } ;
typedef TYPE_2__ git_revert_options ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_CHECKOUT_SAFE ;
 int GIT_CHECKOUT_USE_OURS ;
 int GIT_RESET_HARD ;
 TYPE_2__ GIT_REVERT_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revert (int ,int *,TYPE_2__*) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int merge_test_workdir (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_revert_workdir__conflict_use_ours(void)
{
 git_commit *head, *commit;
 git_oid head_oid, revert_oid;
 git_revert_options opts = GIT_REVERT_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "caf99de3a49827117bb66721010eac461b06a80c", 0, "file1.txt" },
  { 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
  { 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
  { 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
 };

 struct merge_index_entry merge_filesystem_entries[] = {
  { 0100644, "caf99de3a49827117bb66721010eac461b06a80c", 0, "file1.txt" },
  { 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
  { 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
  { 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
 };

 opts.checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_USE_OURS;

 git_oid_fromstr(&head_oid, "72333f47d4e83616630ff3b0ffe4c0faebcc3c45");
 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_oid_fromstr(&revert_oid, "d1d403d22cbe24592d725f442835cf46fe60c8ac");
 cl_git_pass(git_commit_lookup(&commit, repo, &revert_oid));
 cl_git_pass(git_revert(repo, commit, &opts));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 4));
 cl_assert(merge_test_workdir(repo, merge_filesystem_entries, 4));

 git_commit_free(commit);
 git_commit_free(head);
}
