
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workdir_expected ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int index_expected ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_diff ;
typedef int git_commit ;


 char* DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_LOCATION_BOTH ;
 int GIT_RESET_HARD ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rmfile (char*) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reset (int ,int *,int ,int *) ;
 int repo ;
 int strlen (char const*) ;
 int validate_apply_index (int ,struct merge_index_entry*,size_t) ;
 int validate_apply_workdir (int ,struct merge_index_entry*,size_t) ;

void test_apply_both__honors_crlf_attributes(void)
{
 git_diff *diff;
 git_oid oid;
 git_commit *commit;

 const char *diff_file = DIFF_MODIFY_TWO_FILES;

 struct merge_index_entry index_expected[] = {
  { 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
 };
 size_t index_expected_cnt = sizeof(index_expected) /
  sizeof(struct merge_index_entry);

 struct merge_index_entry workdir_expected[] = {
  { 0100644, "176a458f94e0ea5272ce67c36bf30b6be9caf623", 0, ".gitattributes" },
  { 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
 };
 size_t workdir_expected_cnt = sizeof(workdir_expected) /
  sizeof(struct merge_index_entry);

 cl_git_mkfile("merge-recursive/.gitattributes", "* text=auto\n");

 cl_git_rmfile("merge-recursive/asparagus.txt");
 cl_git_rmfile("merge-recursive/veal.txt");

 git_oid_fromstr(&oid, "539bd011c4822c560c1d17cab095006b7a10f707");
 cl_git_pass(git_commit_lookup(&commit, repo, &oid));
 cl_git_pass(git_reset(repo, (git_object *)commit, GIT_RESET_HARD, ((void*)0)));
 git_commit_free(commit);

 cl_git_pass(git_diff_from_buffer(&diff, diff_file, strlen(diff_file)));
 cl_git_pass(git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, ((void*)0)));

 validate_apply_index(repo, index_expected, index_expected_cnt);
 validate_apply_workdir(repo, workdir_expected, workdir_expected_cnt);

 git_diff_free(diff);
}
