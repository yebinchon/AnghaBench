
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;


 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int ,char*) ;
 scalar_t__ git_index_entry_stage (int const*) ;
 int git_index_find (size_t*,int ,char*) ;
 int * git_index_get_byindex (int ,size_t) ;
 int repo_index ;

void test_index_stage__add_always_adds_stage_0(void)
{
 size_t entry_idx;
 const git_index_entry *entry;

    cl_git_mkfile("./mergedrepo/new-file.txt", "new-file\n");

 cl_git_pass(git_index_add_bypath(repo_index, "new-file.txt"));

 cl_assert(!git_index_find(&entry_idx, repo_index, "new-file.txt"));
 cl_assert((entry = git_index_get_byindex(repo_index, entry_idx)) != ((void*)0));
 cl_assert(git_index_entry_stage(entry) == 0);
}
