
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workdir_expected ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_diff ;
typedef int git_apply_options ;


 int DIFF_MANY_CHANGES_TWO ;
 int GIT_APPLY_LOCATION_WORKDIR ;
 int GIT_APPLY_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;
 int validate_apply_workdir (int ,struct merge_index_entry*,size_t) ;
 int validate_index_unchanged (int ) ;

void test_apply_workdir__apply_many_changes_two(void)
{
 git_diff *diff;
 git_apply_options opts = GIT_APPLY_OPTIONS_INIT;

 struct merge_index_entry workdir_expected[] = {
  { 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "6b943d65af6d8db74d747284fa4ca7d716ad5bbb", 0, "veal.txt" },
 };
 size_t workdir_expected_cnt = sizeof(workdir_expected) /
     sizeof(struct merge_index_entry);

 cl_git_pass(git_diff_from_buffer(&diff,
  DIFF_MANY_CHANGES_TWO, strlen(DIFF_MANY_CHANGES_TWO)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_WORKDIR, &opts));

 validate_index_unchanged(repo);
 validate_apply_workdir(repo, workdir_expected, workdir_expected_cnt);

 git_diff_free(diff);
}
