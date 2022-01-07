
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_head_is_correctly_detached () ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_repository_head_detached (int ) ;
 int git_repository_set_head (int ,char*) ;
 int repo ;

void test_repo_head__set_head_Detaches_HEAD_when_the_reference_doesnt_point_to_a_branch(void)
{
 cl_git_pass(git_repository_set_head(repo, "refs/tags/test"));

 cl_assert_equal_i(1, git_repository_head_detached(repo));

 assert_head_is_correctly_detached();
}
