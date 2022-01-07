
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
struct TYPE_4__ {int file_flags; } ;
typedef TYPE_1__ git_merge_options ;
typedef int git_index ;


 int BRANCH_A_CHANGE ;
 int BRANCH_B_CHANGE ;
 int GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE ;
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int merge_trees_from_branches (int **,int ,int ,int ,TYPE_1__*) ;
 int repo ;

void test_merge_trees_whitespace__change(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "a827eab4fd66ab37a6ebcfaa7b7e341abfd55947", 0, "test.txt" },
 };

 opts.file_flags |= GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE;

 cl_git_pass(merge_trees_from_branches(&index, repo, BRANCH_A_CHANGE, BRANCH_B_CHANGE, &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 1));

 git_index_free(index);
}
