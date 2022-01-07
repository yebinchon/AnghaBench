
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NON_EXISTING_HEAD ;
 int cl_assert_equal_i (int,int ) ;
 int git_repository_head_detached (int ) ;
 int make_head_unborn (int ,int ) ;
 int repo ;

void test_repo_head__can_tell_if_an_unborn_head_is_detached(void)
{
 make_head_unborn(repo, NON_EXISTING_HEAD);

 cl_assert_equal_i(0, git_repository_head_detached(repo));
}
