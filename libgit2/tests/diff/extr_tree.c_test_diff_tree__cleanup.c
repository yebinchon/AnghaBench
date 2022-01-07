
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a ;
 int b ;
 int cl_git_sandbox_cleanup () ;
 int diff ;
 int git_diff_free (int ) ;
 int git_tree_free (int ) ;

void test_diff_tree__cleanup(void)
{
 git_diff_free(diff);
 git_tree_free(a);
 git_tree_free(b);

 cl_git_sandbox_cleanup();

}
