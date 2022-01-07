
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;


 int cl_git_pass (int ) ;
 int cl_repo_set_string (int ,char*,char*) ;
 int git_index_conflict_get (int const**,int const**,int const**,int ,char*) ;
 int merge_branch () ;
 int repo ;
 int repo_index ;

void test_merge_driver__honors_builtin_mergedefault(void)
{
 const git_index_entry *ancestor, *ours, *theirs;

 cl_repo_set_string(repo, "merge.default", "binary");
 merge_branch();

 cl_git_pass(git_index_conflict_get(&ancestor, &ours, &theirs,
  repo_index, "automergeable.txt"));
}
