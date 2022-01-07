
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_commit ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_revert_commit (int **,int ,int *,int *,int ,int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int repo ;

void test_revert_bare__orphan(void)
{
 git_commit *head_commit, *revert_commit;
 git_oid head_oid, revert_oid;
 git_index *index;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "296a6d3be1dff05c5d1f631d2459389fa7b619eb", 0, "file-mainline.txt" },
 };

 git_oid_fromstr(&head_oid, "39467716290f6df775a91cdb9a4eb39295018145");
 cl_git_pass(git_commit_lookup(&head_commit, repo, &head_oid));

 git_oid_fromstr(&revert_oid, "ebb03002cee5d66c7732dd06241119fe72ab96a5");
 cl_git_pass(git_commit_lookup(&revert_commit, repo, &revert_oid));

 cl_git_pass(git_revert_commit(&index, repo, revert_commit, head_commit, 0, ((void*)0)));
 cl_assert(merge_test_index(index, merge_index_entries, 1));

 git_commit_free(revert_commit);
 git_commit_free(head_commit);
 git_index_free(index);
}
