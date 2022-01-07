
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

void test_merge_trees_recursive__merge_base_for_virtual_commit(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "1bde1883de4977ea3e664b315da951d1f614c3b1", 0, "targetfile.txt" },
  { 0100644, "b7de2b52ba055688061355fad1599a5d214ce8f8", 1, "version.txt" },
  { 0100644, "358efd6f589384fa8baf92234db9c7899a53916e", 2, "version.txt" },
  { 0100644, "a664873b1c0b9a1ed300f8644dde536fdaa3a34f", 3, "version.txt" },
 };

 cl_git_pass(merge_commits_from_branches(&index, repo, "branchJ-1", "branchJ-2", &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 4));

 git_index_free(index);
}
