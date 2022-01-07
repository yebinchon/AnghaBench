
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;
typedef int git_annotated_commit ;


 int GIT_BUF_INIT ;
 int GIT_RESET_MIXED ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_revspec (int **,int ,char*) ;
 int git_buf_clear (int *) ;
 char const* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,int ) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_oid_tostr_s (int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_reset_from_annotated (int ,int *,int ,int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int reflog_check (int ,char*,int,char*,char const*) ;
 int repo ;
 int * target ;

void test_reset_mixed__reflog_is_correct(void)
{
 git_buf buf = GIT_BUF_INIT;
 git_annotated_commit *annotated;
 const char *exp_msg = "commit: Updating test data so we can test inter-hunk-context";

 reflog_check(repo, "HEAD", 9, "yoram.harmelin@gmail.com", exp_msg);
 reflog_check(repo, "refs/heads/master", 9, "yoram.harmelin@gmail.com", exp_msg);


 cl_git_pass(git_revparse_single(&target, repo, "HEAD^{commit}"));
 cl_git_pass(git_reset(repo, target, GIT_RESET_MIXED, ((void*)0)));
 reflog_check(repo, "HEAD", 9, "yoram.harmelin@gmail.com", exp_msg);
 reflog_check(repo, "refs/heads/master", 9, "yoram.harmelin@gmail.com", exp_msg);

 git_object_free(target);
 target = ((void*)0);


 cl_git_pass(git_revparse_single(&target, repo, "HEAD~^{commit}"));
 git_buf_clear(&buf);
 cl_git_pass(git_buf_printf(&buf, "reset: moving to %s", git_oid_tostr_s(git_object_id(target))));
 cl_git_pass(git_reset(repo, target, GIT_RESET_MIXED, ((void*)0)));
 reflog_check(repo, "HEAD", 10, ((void*)0), git_buf_cstr(&buf));
 reflog_check(repo, "refs/heads/master", 10, ((void*)0), git_buf_cstr(&buf));
 git_buf_dispose(&buf);


 exp_msg = "reset: moving to HEAD~^{commit}";
 cl_git_pass(git_annotated_commit_from_revspec(&annotated, repo, "HEAD~^{commit}"));
 cl_git_pass(git_reset_from_annotated(repo, annotated, GIT_RESET_MIXED, ((void*)0)));
 reflog_check(repo, "HEAD", 11, ((void*)0), exp_msg);
 reflog_check(repo, "refs/heads/master", 11, ((void*)0), exp_msg);
 git_annotated_commit_free(annotated);
}
