
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workdir_expected ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_tree ;
typedef int git_oid ;
typedef int git_diff_options ;
typedef int git_diff ;
typedef int git_commit ;


 int GIT_APPLY_LOCATION_WORKDIR ;
 int GIT_DIFF_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_free (int *) ;
 int repo ;
 int validate_apply_workdir (int ,struct merge_index_entry*,size_t) ;
 int validate_index_unchanged (int ) ;

void test_apply_workdir__generated_diff(void)
{
 git_oid a_oid, b_oid;
 git_commit *a_commit, *b_commit;
 git_tree *a_tree, *b_tree;
 git_diff *diff;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;

 struct merge_index_entry workdir_expected[] = {
  { 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
 };
 size_t workdir_expected_cnt = sizeof(workdir_expected) /
  sizeof(struct merge_index_entry);

 git_oid_fromstr(&a_oid, "539bd011c4822c560c1d17cab095006b7a10f707");
 git_oid_fromstr(&b_oid, "7c7bf85e978f1d18c0566f702d2cb7766b9c8d4f"); cl_git_pass(git_commit_lookup(&a_commit, repo, &a_oid));
 cl_git_pass(git_commit_lookup(&b_commit, repo, &b_oid));

 cl_git_pass(git_commit_tree(&a_tree, a_commit));
 cl_git_pass(git_commit_tree(&b_tree, b_commit));

 cl_git_pass(git_diff_tree_to_tree(&diff, repo, a_tree, b_tree, &opts));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_WORKDIR, ((void*)0)));

 validate_index_unchanged(repo);
 validate_apply_workdir(repo, workdir_expected, workdir_expected_cnt);

 git_diff_free(diff);
 git_tree_free(a_tree);
 git_tree_free(b_tree);
 git_commit_free(a_commit);
 git_commit_free(b_commit);
}
