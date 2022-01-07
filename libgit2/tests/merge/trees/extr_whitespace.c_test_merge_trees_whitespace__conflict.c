
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef int git_merge_options ;
typedef int git_index ;


 int BRANCH_A_EOL ;
 int BRANCH_B_EOL ;
 int GIT_MERGE_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int merge_trees_from_branches (int **,int ,int ,int ,int *) ;
 int repo ;

void test_merge_trees_whitespace__conflict(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "4026a6c83f39c56881c9ac62e7582db9e3d33a4f", 1, "test.txt" },
  { 0100644, "c3b1fb31424c98072542cc8e42b48c92e52f494a", 2, "test.txt" },
  { 0100644, "262f67de0de2e535a59ae1bc3c739601e98c354d", 3, "test.txt" },
 };

 cl_git_pass(merge_trees_from_branches(&index, repo, BRANCH_A_EOL, BRANCH_B_EOL, &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 3));

 git_index_free(index);
}
