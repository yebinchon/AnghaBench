
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int member_0; char* member_1; int member_2; char* member_3; } ;
typedef int git_merge_options ;
typedef int git_index ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int merge_trees_from_branches (int **,int ,char*,char*,int *) ;
 int repo ;

void test_merge_trees_renames__submodules(void)
{
 git_index *index;
 git_merge_options *opts = ((void*)0);

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "cd3e8d4aa06bdc781f264171030bc28f2b370fee", 0, ".gitmodules" },
  { 0100644, "4dd1ef7569b18d92d93c0a35bb6b93049137b355", 1, "file.txt" },
  { 0100644, "a2d8d1824c68541cca94ffb90f79291eba495921", 2, "file.txt" },
  { 0100644, "63ec604d491161ddafdae4179843c26d54bd999a", 3, "file.txt" },
  { 0160000, "0000000000000000000000000000000000000001", 1, "submodule1" },
  { 0160000, "0000000000000000000000000000000000000002", 3, "submodule1" },
  { 0160000, "0000000000000000000000000000000000000003", 0, "submodule2" },
 };

 cl_git_pass(merge_trees_from_branches(&index, repo,
  "submodule_rename1", "submodule_rename2",
  opts));
 cl_assert(merge_test_index(index, merge_index_entries, 7));
 git_index_free(index);
}
