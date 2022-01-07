
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int index_expected ;
struct TYPE_4__ {int mode; char* path; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_diff ;


 char* DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_LOCATION_INDEX ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_index_remove (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int repo ;
 int strlen (char const*) ;
 int validate_apply_index (int ,struct merge_index_entry*,size_t) ;
 int validate_workdir_unchanged (int ) ;

void test_apply_index__keeps_nonconflicting_changes(void)
{
 git_diff *diff;
 git_index *index;
 git_index_entry idx_entry;

 const char *diff_file = DIFF_MODIFY_TWO_FILES;

 struct merge_index_entry index_expected[] = {
  { 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
  { 0100644, "898d12687fb35be271c27c795a6b32c8b51da79e", 0, "beef.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
 };
 size_t index_expected_cnt = sizeof(index_expected) /
  sizeof(struct merge_index_entry);


 cl_git_pass(git_repository_index(&index, repo));

 memset(&idx_entry, 0, sizeof(git_index_entry));
 idx_entry.mode = 0100644;
 idx_entry.path = "beef.txt";
 cl_git_pass(git_oid_fromstr(&idx_entry.id, "898d12687fb35be271c27c795a6b32c8b51da79e"));
 cl_git_pass(git_index_add(index, &idx_entry));

 cl_git_pass(git_index_remove(index, "bouilli.txt", 0));
 cl_git_pass(git_index_write(index));
 git_index_free(index);

 cl_git_pass(git_diff_from_buffer(&diff, diff_file, strlen(diff_file)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_INDEX, ((void*)0)));

 validate_apply_index(repo, index_expected, index_expected_cnt);
 validate_workdir_unchanged(repo);

 git_diff_free(diff);
}
