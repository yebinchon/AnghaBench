
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_cleanup () ;
 int git_tree_free (int ) ;
 int tree ;

void test_repo_headtree__cleanup(void)
{
 git_tree_free(tree);
 cl_git_sandbox_cleanup();
}
