
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_oid_streq (int ,char*) ;
 int git_repository_detach_head (int ) ;
 int git_repository_head_tree (int *,int ) ;
 int git_tree_id (int ) ;
 int repo ;
 int tree ;

void test_repo_headtree__can_retrieve_the_root_tree_from_a_detached_head(void)
{
 cl_git_pass(git_repository_detach_head(repo));

 cl_git_pass(git_repository_head_tree(&tree, repo));

 cl_assert(git_oid_streq(git_tree_id(tree), "az"));
}
