
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int member_0; char* member_1; char* member_3; int member_2; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_merge_options ;
typedef int git_index ;


 int GIT_MERGE_NO_RECURSIVE ;
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int merge_commits_from_branches (int **,int ,char*,char*,TYPE_1__*) ;
 int merge_test_index (int *,struct merge_index_entry*,int) ;
 int repo ;

void test_merge_trees_recursive__one_base_commit_norecursive(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 struct merge_index_entry merge_index_entries[] = {
  { 0100644, "dea7215f259b2cced87d1bda6c72f8b4ce37a2ff", 0, "asparagus.txt" },
  { 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
  { 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
  { 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
  { 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
  { 0100644, "94d2c01087f48213bd157222d54edfefd77c9bba", 0, "veal.txt" },
 };

 opts.flags |= GIT_MERGE_NO_RECURSIVE;

 cl_git_pass(merge_commits_from_branches(&index, repo, "branchA-1", "branchA-2", &opts));

 cl_assert(merge_test_index(index, merge_index_entries, 6));

 git_index_free(index);
}
