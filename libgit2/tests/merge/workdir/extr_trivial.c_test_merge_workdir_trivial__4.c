
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int * git_index_get_bypath (int ,char*,int) ;
 scalar_t__ git_index_reuc_entrycount (int ) ;
 int merge_trivial (char*,char*) ;
 int merge_trivial_conflict_entrycount () ;
 int repo_index ;

void test_merge_workdir_trivial__4(void)
{
 const git_index_entry *entry;

 cl_git_pass(merge_trivial("trivial-4", "trivial-4-branch"));

 cl_assert((entry = git_index_get_bypath(repo_index, "new-and-different.txt", 0)) == ((void*)0));
 cl_assert(git_index_reuc_entrycount(repo_index) == 0);

 cl_assert(merge_trivial_conflict_entrycount() == 2);
 cl_assert(entry = git_index_get_bypath(repo_index, "new-and-different.txt", 2));
 cl_assert(entry = git_index_get_bypath(repo_index, "new-and-different.txt", 3));
}
