
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_tree ;
typedef int git_oid ;
typedef int git_index ;
typedef int git_diff ;
typedef int git_commit ;


 int DIFF_ADD_FILE ;
 int cl_git_pass (int ) ;
 int git_apply_to_tree (int **,int ,int *,int *,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int git_index_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_free (int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int repo ;
 int strlen (int ) ;

void test_apply_tree__adds_file(void)
{
 git_oid a_oid;
 git_commit *a_commit;
 git_tree *a_tree;
 git_diff *diff;
 git_index *index = ((void*)0);

 struct merge_index_entry expected[] = {
  { 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "6370543fcfedb3e6516ec53b06158f3687dc1447", 0, "newfile.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "94d2c01087f48213bd157222d54edfefd77c9bba", 0, "veal.txt" },
 };

 git_oid_fromstr(&a_oid, "539bd011c4822c560c1d17cab095006b7a10f707");

 cl_git_pass(git_commit_lookup(&a_commit, repo, &a_oid));

 cl_git_pass(git_commit_tree(&a_tree, a_commit));

 cl_git_pass(git_diff_from_buffer(&diff,
  DIFF_ADD_FILE, strlen(DIFF_ADD_FILE)));

 cl_git_pass(git_apply_to_tree(&index, repo, a_tree, diff, ((void*)0)));
 merge_test_index(index, expected, 7);

 git_index_free(index);
 git_diff_free(diff);
 git_tree_free(a_tree);
 git_commit_free(a_commit);
}
