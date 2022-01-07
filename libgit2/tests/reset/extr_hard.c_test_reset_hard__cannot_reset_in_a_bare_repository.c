
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_EBAREREPO ;
 int GIT_RESET_HARD ;
 int KNOWN_COMMIT_IN_BARE_REPO ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_is_bare (int *) ;
 int git_repository_open (int **,int ) ;
 int git_reset (int *,int ,int ,int *) ;
 int git_revparse_single (int *,int *,int ) ;
 int target ;

void test_reset_hard__cannot_reset_in_a_bare_repository(void)
{
 git_repository *bare;

 cl_git_pass(git_repository_open(&bare, cl_fixture("testrepo.git")));
 cl_assert(git_repository_is_bare(bare) == 1);

 cl_git_pass(git_revparse_single(&target, bare, KNOWN_COMMIT_IN_BARE_REPO));

 cl_assert_equal_i(GIT_EBAREREPO, git_reset(bare, target, GIT_RESET_HARD, ((void*)0)));

 git_repository_free(bare);
}
