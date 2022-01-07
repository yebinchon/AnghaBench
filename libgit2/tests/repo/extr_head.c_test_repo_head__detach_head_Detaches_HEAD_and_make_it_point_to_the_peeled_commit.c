
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_head_is_correctly_detached () ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_repository_detach_head (int ) ;
 int git_repository_head_detached (int ) ;
 int repo ;

void test_repo_head__detach_head_Detaches_HEAD_and_make_it_point_to_the_peeled_commit(void)
{
 cl_assert_equal_i(0, git_repository_head_detached(repo));

 cl_git_pass(git_repository_detach_head(repo));

 assert_head_is_correctly_detached();
}
