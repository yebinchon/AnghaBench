
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int index_expected ;
typedef int git_index ;
typedef int git_diff ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_apply_options ;


 char* DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_CHECK ;
 int GIT_APPLY_LOCATION_INDEX ;
 TYPE_1__ GIT_APPLY_OPTIONS_INIT ;
 int GIT_EAPPLYFAIL ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_index_free (int *) ;
 int git_index_remove (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int repo ;
 int strlen (char const*) ;
 int validate_apply_index (int ,struct merge_index_entry*,size_t) ;

void test_apply_check__does_not_apply(void)
{
 git_diff *diff;
 git_index *index;
 git_apply_options opts = GIT_APPLY_OPTIONS_INIT;

 const char *diff_file = DIFF_MODIFY_TWO_FILES;

 struct merge_index_entry index_expected[] = {
  { 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
 };
 size_t index_expected_cnt = sizeof(index_expected) /
  sizeof(struct merge_index_entry);


 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_remove(index, "veal.txt", 0));
 cl_git_pass(git_index_write(index));
 git_index_free(index);

 opts.flags |= GIT_APPLY_CHECK;
 cl_git_pass(git_diff_from_buffer(&diff, diff_file, strlen(diff_file)));
 cl_git_fail_with(GIT_EAPPLYFAIL, git_apply(repo, diff, GIT_APPLY_LOCATION_INDEX, &opts));

 validate_apply_index(repo, index_expected, index_expected_cnt);

 git_diff_free(diff);
}
