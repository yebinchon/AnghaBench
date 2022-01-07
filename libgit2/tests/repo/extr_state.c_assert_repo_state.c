
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository_state_t ;


 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int git_repository_state (int ) ;

__attribute__((used)) static void assert_repo_state(git_repository_state_t state)
{
 cl_assert_equal_i(state, git_repository_state(_repo));
}
