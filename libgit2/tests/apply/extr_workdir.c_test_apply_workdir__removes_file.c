
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workdir_expected ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_diff ;


 int DIFF_DELETE_FILE ;
 int GIT_APPLY_LOCATION_WORKDIR ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int repo ;
 int strlen (int ) ;
 int validate_apply_workdir (int ,struct merge_index_entry*,size_t) ;
 int validate_index_unchanged (int ) ;

void test_apply_workdir__removes_file(void)
{
 git_diff *diff;

 struct merge_index_entry workdir_expected[] = {
  { 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "94d2c01087f48213bd157222d54edfefd77c9bba", 0, "veal.txt" },
 };
 size_t workdir_expected_cnt = sizeof(workdir_expected) /
     sizeof(struct merge_index_entry);

 cl_git_pass(git_diff_from_buffer(&diff, DIFF_DELETE_FILE,
  strlen(DIFF_DELETE_FILE)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_WORKDIR, ((void*)0)));

 validate_index_unchanged(repo);
 validate_apply_workdir(repo, workdir_expected, workdir_expected_cnt);

 git_diff_free(diff);
}
