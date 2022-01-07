
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_EBAREREPO ;
 int GIT_STASH_DEFAULT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_stash_save (int *,int *,int ,int *,int ) ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__cannot_stash_against_a_bare_repository(void)
{
 git_repository *local;

 cl_git_pass(git_repository_init(&local, "sorry-it-is-a-non-bare-only-party", 1));

 cl_assert_equal_i(GIT_EBAREREPO,
  git_stash_save(&stash_tip_oid, local, signature, ((void*)0), GIT_STASH_DEFAULT));

 git_repository_free(local);
}
