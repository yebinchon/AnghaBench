
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int delete_head (int ) ;
 int git_repository_head_tree (int *,int ) ;
 int repo ;
 int tree ;

void test_repo_headtree__when_head_is_missing_returns_ENOTFOUND(void)
{
 delete_head(repo);

 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_head_tree(&tree, repo));
}
