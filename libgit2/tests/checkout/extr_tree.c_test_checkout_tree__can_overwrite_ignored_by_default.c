
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_CHECKOUT_SAFE ;
 int assert_on_branch (int ,char*) ;
 int checkout_tree_with_blob_ignored_in_workdir (int ,int) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_path_isfile (char*) ;
 int git_repository_set_head (int ,char*) ;

void test_checkout_tree__can_overwrite_ignored_by_default(void)
{
 cl_git_pass(checkout_tree_with_blob_ignored_in_workdir(GIT_CHECKOUT_SAFE, 0));

 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/subtrees"));

 cl_assert(git_path_isfile("testrepo/ab/4.txt"));

 assert_on_branch(g_repo, "subtrees");
}
