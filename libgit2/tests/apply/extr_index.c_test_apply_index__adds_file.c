
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int index_expected ;
typedef int git_diff ;


 int DIFF_ADD_FILE ;
 int GIT_APPLY_LOCATION_INDEX ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;
 int validate_apply_index (int ,struct merge_index_entry*,size_t) ;
 int validate_workdir_unchanged (int ) ;

void test_apply_index__adds_file(void)
{
 git_diff *diff;

 struct merge_index_entry index_expected[] = {
  { 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "6370543fcfedb3e6516ec53b06158f3687dc1447", 0, "newfile.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "94d2c01087f48213bd157222d54edfefd77c9bba", 0, "veal.txt" },
 };
 size_t index_expected_cnt = sizeof(index_expected) /
     sizeof(struct merge_index_entry);

 cl_git_pass(git_diff_from_buffer(&diff,
  DIFF_ADD_FILE, strlen(DIFF_ADD_FILE)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_INDEX, ((void*)0)));

 validate_apply_index(repo, index_expected, index_expected_cnt);
 validate_workdir_unchanged(repo);

 git_diff_free(diff);
}
