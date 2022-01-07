
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EUNBORNBRANCH ;
 int NON_EXISTING_HEAD ;
 int cl_assert_equal_i (int,int ) ;
 int git_repository_head_tree (int *,int ) ;
 int git_repository_head_unborn (int ) ;
 int make_head_unborn (int ,int ) ;
 int repo ;
 int tree ;

void test_repo_headtree__when_head_is_unborn_returns_EUNBORNBRANCH(void)
{
 make_head_unborn(repo, NON_EXISTING_HEAD);

 cl_assert_equal_i(1, git_repository_head_unborn(repo));

 cl_assert_equal_i(GIT_EUNBORNBRANCH, git_repository_head_tree(&tree, repo));
}
