
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_reuc_entry ;
typedef int git_index_entry ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int * git_index_get_bypath (int ,char*,int ) ;
 int git_index_reuc_entrycount (int ) ;
 int * git_index_reuc_get_bypath (int ,char*) ;
 int merge_trivial (char*,char*) ;
 scalar_t__ merge_trivial_conflict_entrycount () ;
 int repo_index ;

void test_merge_workdir_trivial__6(void)
{
 const git_index_entry *entry;
 const git_index_reuc_entry *reuc;

 cl_git_pass(merge_trivial("trivial-6", "trivial-6-branch"));

 cl_assert((entry = git_index_get_bypath(repo_index, "removed-in-both.txt", 0)) == ((void*)0));
 cl_assert(git_index_reuc_entrycount(repo_index) == 1);
 cl_assert(reuc = git_index_reuc_get_bypath(repo_index, "removed-in-both.txt"));

 cl_assert(merge_trivial_conflict_entrycount() == 0);
}
