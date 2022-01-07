
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * a ;
 int * b ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff ;
 int diff_file_cb ;
 int expect ;
 int g_repo ;
 int git_diff_foreach (int ,int ,int *,int *,int *,int *) ;
 int git_diff_tree_to_tree (int *,int ,int *,int *,int *) ;
 int opts ;
 void* resolve_commit_oid_to_tree (int ,char const*) ;

void process_tree_to_tree_diffing(
 const char *old_commit,
 const char *new_commit)
{
 g_repo = cl_git_sandbox_init("unsymlinked.git");

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, old_commit)) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, new_commit)) != ((void*)0));

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));

 cl_git_pass(git_diff_foreach(
  diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &expect));
}
