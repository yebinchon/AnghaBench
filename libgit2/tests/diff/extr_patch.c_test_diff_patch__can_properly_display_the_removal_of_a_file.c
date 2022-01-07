
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_diff ;


 int GIT_DIFF_FORMAT_PATCH ;
 int check_removal_cb ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_print (int *,int ,int ,int *) ;
 int git_diff_tree_to_tree (int **,int ,int *,int *,int *) ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_patch__can_properly_display_the_removal_of_a_file(void)
{
 const char *one_sha = "26a125e";
 const char *another_sha = "735b6a2";
 git_tree *one, *another;
 git_diff *diff;

 g_repo = cl_git_sandbox_init("status");

 one = resolve_commit_oid_to_tree(g_repo, one_sha);
 another = resolve_commit_oid_to_tree(g_repo, another_sha);

 cl_git_pass(git_diff_tree_to_tree(&diff, g_repo, one, another, ((void*)0)));

 cl_git_pass(git_diff_print(
  diff, GIT_DIFF_FORMAT_PATCH, check_removal_cb, ((void*)0)));

 git_diff_free(diff);

 git_tree_free(another);
 git_tree_free(one);
}
