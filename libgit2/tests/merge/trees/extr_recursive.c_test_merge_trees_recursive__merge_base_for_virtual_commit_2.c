
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef int git_merge_options ;
typedef int git_index ;


 int GIT_MERGE_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_commits_from_branches (int **,int ,char*,char*,int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int repo ;

void test_merge_trees_recursive__merge_base_for_virtual_commit_2(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "4a06b258fed8a4d15967ec4253ae7366b70f727d", 0, "targetfile.txt" },
  { 0100644, "b6bd0f9952f396e757d3f91e08c59a7e91707201", 1, "version.txt" },
  { 0100644, "f0856993e005c0d8ed2dc7cdc222cc1d89fb3c77", 2, "version.txt" },
  { 0100644, "2cba583804a4a6fad1baf97c959be447238d1489", 3, "version.txt" },
 };

 cl_git_pass(merge_commits_from_branches(&index, repo, "branchK-1", "branchK-2", &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 4));

 git_index_free(index);
}
