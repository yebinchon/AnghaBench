
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,int *) ;

void test_checkout_tree__nullopts(void)
{
 cl_git_pass(git_checkout_tree(g_repo, ((void*)0), ((void*)0)));
}
