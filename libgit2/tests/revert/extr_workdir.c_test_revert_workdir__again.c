
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_tree ;
typedef int git_signature ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_create (int *,int ,char*,int *,int *,int *,char*,int *,int,int const**) ;
 int git_commit_free (int *) ;
 int git_index_write_tree (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revert (int ,int *,int *) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,char*,char*,int ,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int merge_test_index (int ,struct merge_index_entry*,int) ;
 int repo ;
 int repo_index ;
 int time (int *) ;

void test_revert_workdir__again(void)
{
 git_reference *head_ref;
 git_commit *orig_head;
 git_tree *reverted_tree;
 git_oid reverted_tree_oid, reverted_commit_oid;
 git_signature *signature;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "7731926a337c4eaba1e2187d90ebfa0a93659382", 0, "file1.txt" },
  { 0100644, "0ab09ea6d4c3634bdf6c221626d8b6f7dd890767", 0, "file2.txt" },
  { 0100644, "f4e107c230d08a60fb419d19869f1f282b272d9c", 0, "file3.txt" },
  { 0100644, "0f5bfcf58c558d865da6be0281d7795993646cee", 0, "file6.txt" },
 };

 cl_git_pass(git_repository_head(&head_ref, repo));
 cl_git_pass(git_reference_peel((git_object **)&orig_head, head_ref, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, (git_object *)orig_head, GIT_RESET_HARD, ((void*)0)));

 cl_git_pass(git_revert(repo, orig_head, ((void*)0)));

 cl_assert(merge_test_index(repo_index, merge_index_entries, 4));

 cl_git_pass(git_index_write_tree(&reverted_tree_oid, repo_index));
 cl_git_pass(git_tree_lookup(&reverted_tree, repo, &reverted_tree_oid));

 cl_git_pass(git_signature_new(&signature, "Reverter", "reverter@example.org", time(((void*)0)), 0));
 cl_git_pass(git_commit_create(&reverted_commit_oid, repo, "HEAD", signature, signature, ((void*)0), "Reverted!", reverted_tree, 1, (const git_commit **)&orig_head));

 cl_git_pass(git_revert(repo, orig_head, ((void*)0)));
 cl_assert(merge_test_index(repo_index, merge_index_entries, 4));

 git_signature_free(signature);
 git_tree_free(reverted_tree);
 git_commit_free(orig_head);
 git_reference_free(head_ref);
}
