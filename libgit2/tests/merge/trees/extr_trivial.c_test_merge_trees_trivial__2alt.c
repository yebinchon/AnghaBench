
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;
typedef int git_index ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int * git_index_get_bypath (int *,char*,int ) ;
 scalar_t__ git_index_reuc_entrycount (int *) ;
 int merge_trivial (int **,char*,char*) ;
 scalar_t__ merge_trivial_conflict_entrycount (int *) ;

void test_merge_trees_trivial__2alt(void)
{
 git_index *result;
 const git_index_entry *entry;

 cl_git_pass(merge_trivial(&result, "trivial-2alt", "trivial-2alt-branch"));

 cl_assert(entry = git_index_get_bypath(result, "new-in-branch.txt", 0));
 cl_assert(git_index_reuc_entrycount(result) == 0);
 cl_assert(merge_trivial_conflict_entrycount(result) == 0);

 git_index_free(result);
}
