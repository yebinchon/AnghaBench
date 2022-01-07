
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_index ;
typedef int git_diff ;
typedef int both_expected ;


 char* DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_LOCATION_BOTH ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int repo ;
 int strlen (char const*) ;
 int validate_apply_index (int ,struct merge_index_entry*,size_t) ;
 int validate_apply_workdir (int ,struct merge_index_entry*,size_t) ;

void test_apply_both__can_apply_nonconflicting_file_changes(void)
{
 git_diff *diff;
 git_index *index;

 const char *diff_file = DIFF_MODIFY_TWO_FILES;

 struct merge_index_entry both_expected[] = {
  { 0100644, "f8a701c8a1a22c1729ee50faff1111f2d64f96fc", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
 };
 size_t both_expected_cnt = sizeof(both_expected) /
  sizeof(struct merge_index_entry);






 cl_git_append2file("merge-recursive/asparagus.txt",
     "This line is added in the index and the workdir.\n");

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, "asparagus.txt"));
 cl_git_pass(git_index_write(index));
 git_index_free(index);

 cl_git_pass(git_diff_from_buffer(&diff, diff_file, strlen(diff_file)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, ((void*)0)));

 validate_apply_index(repo, both_expected, both_expected_cnt);
 validate_apply_workdir(repo, both_expected, both_expected_cnt);

 git_diff_free(diff);
}
