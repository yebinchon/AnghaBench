
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_RESET_HARD ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revert (int ,int *,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;

void test_revert_workdir__orphan(void)
{
 git_commit *head, *commit;
 git_oid head_oid, revert_oid;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "296a6d3be1dff05c5d1f631d2459389fa7b619eb", 0, "file-mainline.txt" },
 };

 git_oid_fromstr(&head_oid, "39467716290f6df775a91cdb9a4eb39295018145");
 cl_git_pass(git_commit_lookup(&head, repo, &head_oid));
 cl_git_pass(git_reset(repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_oid_fromstr(&revert_oid, "ebb03002cee5d66c7732dd06241119fe72ab96a5");
 cl_git_pass(git_commit_lookup(&commit, repo, &revert_oid));
 cl_git_pass(git_revert(repo, commit, ((void*)0)));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 1));

 git_commit_free(commit);
 git_commit_free(head);
}
