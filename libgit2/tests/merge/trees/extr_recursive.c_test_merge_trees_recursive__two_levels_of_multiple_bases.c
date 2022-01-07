
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
typedef int git_merge_options ;
typedef int git_index ;


 int GIT_MERGE_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_commits_from_branches (int **,int ,char*,char*,int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int repo ;

void test_merge_trees_recursive__two_levels_of_multiple_bases(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "15faa0c9991f2d65686e844651faa2ff9827887b", 0, "veal.txt" },
 };

 cl_git_pass(merge_commits_from_branches(&index, repo, "branchC-1", "branchC-2", &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 6));

 git_index_free(index);
}
