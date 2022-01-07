
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workdir_expected ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_diff ;


 int DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_LOCATION_WORKDIR ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_rmfile (char*) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;
 int validate_apply_workdir (int ,struct merge_index_entry*,size_t) ;
 int validate_index_unchanged (int ) ;

void test_apply_workdir__keeps_nonconflicting_changes(void)
{
 git_diff *diff;

 struct merge_index_entry workdir_expected[] = {
  { 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "f75ba05f340c51065cbea2e1fdbfe5fe13144c97", 0, "gravy.txt" },
  { 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
 };
 size_t workdir_expected_cnt = sizeof(workdir_expected) /
     sizeof(struct merge_index_entry);

 cl_git_rmfile("merge-recursive/oyster.txt");
 cl_git_rewritefile("merge-recursive/gravy.txt", "Hello, world.\n");

 cl_git_pass(git_diff_from_buffer(&diff,
  DIFF_MODIFY_TWO_FILES, strlen(DIFF_MODIFY_TWO_FILES)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_WORKDIR, ((void*)0)));

 validate_index_unchanged(repo);
 validate_apply_workdir(repo, workdir_expected, workdir_expected_cnt);

 git_diff_free(diff);
}
