
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_object ;
 int g_repo ;
 int git_checkout_tree (int ,int ,int *) ;
 int git_revparse_single (int *,int ,char*) ;

void test_checkout_tree__cannot_checkout_a_non_treeish(void)
{

 cl_git_pass(git_revparse_single(&g_object, g_repo, "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd"));
 cl_git_fail(git_checkout_tree(g_repo, g_object, ((void*)0)));
}
