
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RESET_SOFT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_revparse_single (int *,int ,char*) ;
 int repo ;
 int target ;

void test_reset_soft__cannot_reset_to_a_tag_not_pointing_at_a_commit(void)
{

 cl_git_pass(git_revparse_single(&target, repo, "53fc32d"));

 cl_git_fail(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));
 git_object_free(target);


 cl_git_pass(git_revparse_single(&target, repo, "521d87c"));
 cl_git_fail(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));
}
