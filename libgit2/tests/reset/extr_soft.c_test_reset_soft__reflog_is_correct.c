
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_annotated_commit ;


 int GIT_RESET_SOFT ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_revspec (int **,int ,char*) ;
 int git_object_free (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_reset_from_annotated (int ,int *,int ,int *) ;
 int git_revparse_single (int *,int ,char*) ;
 int reflog_check (int ,char*,int,char*,char const*) ;
 int repo ;
 int target ;

void test_reset_soft__reflog_is_correct(void)
{
 git_annotated_commit *annotated;
 const char *exp_msg = "checkout: moving from br2 to master";
 const char *master_msg = "commit: checking in";

 reflog_check(repo, "HEAD", 7, "yoram.harmelin@gmail.com", exp_msg);
 reflog_check(repo, "refs/heads/master", 2, "yoram.harmelin@gmail.com", master_msg);


 cl_git_pass(git_revparse_single(&target, repo, "HEAD^{commit}"));
 cl_git_pass(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));
 reflog_check(repo, "HEAD", 7, "yoram.harmelin@gmail.com", exp_msg);
 reflog_check(repo, "refs/heads/master", 2, "yoram.harmelin@gmail.com", master_msg);
 git_object_free(target);


 exp_msg = "reset: moving to be3563ae3f795b2b4353bcce3a527ad0a4f7f644";
 cl_git_pass(git_revparse_single(&target, repo, "HEAD~^{commit}"));
 cl_git_pass(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));
 reflog_check(repo, "HEAD", 8, "yoram.harmelin@gmail.com", exp_msg);
 reflog_check(repo, "refs/heads/master", 3, ((void*)0), exp_msg);


 exp_msg = "reset: moving to HEAD~^{commit}";
 cl_git_pass(git_annotated_commit_from_revspec(&annotated, repo, "HEAD~^{commit}"));
 cl_git_pass(git_reset_from_annotated(repo, annotated, GIT_RESET_SOFT, ((void*)0)));
 reflog_check(repo, "HEAD", 9, "yoram.harmelin@gmail.com", exp_msg);
 reflog_check(repo, "refs/heads/master", 4, ((void*)0), exp_msg);

 git_annotated_commit_free(annotated);
}
