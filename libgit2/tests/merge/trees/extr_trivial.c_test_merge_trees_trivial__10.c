
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_reuc_entry ;
typedef int git_index_entry ;
typedef int git_index ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int * git_index_get_bypath (int *,char*,int ) ;
 int git_index_reuc_entrycount (int *) ;
 int * git_index_reuc_get_bypath (int *,char*) ;
 int merge_trivial (int **,char*,char*) ;
 scalar_t__ merge_trivial_conflict_entrycount (int *) ;

void test_merge_trees_trivial__10(void)
{
 git_index *result;
 const git_index_entry *entry;
 const git_index_reuc_entry *reuc;

 cl_git_pass(merge_trivial(&result, "trivial-10", "trivial-10-branch"));

 cl_assert((entry = git_index_get_bypath(result, "removed-in-10-branch.txt", 0)) == ((void*)0));

 cl_assert(git_index_reuc_entrycount(result) == 1);
 cl_assert(reuc = git_index_reuc_get_bypath(result, "removed-in-10-branch.txt"));

 cl_assert(merge_trivial_conflict_entrycount(result) == 0);

 git_index_free(result);
}
