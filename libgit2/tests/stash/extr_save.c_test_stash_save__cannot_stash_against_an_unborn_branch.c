
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_EUNBORNBRANCH ;
 int GIT_STASH_DEFAULT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int ,char*,char*,int,int *) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__cannot_stash_against_an_unborn_branch(void)
{
 git_reference *head;

 cl_git_pass(git_reference_symbolic_create(&head, repo, "HEAD", "refs/heads/unborn", 1, ((void*)0)));

 cl_assert_equal_i(GIT_EUNBORNBRANCH,
  git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));

 git_reference_free(head);
}
