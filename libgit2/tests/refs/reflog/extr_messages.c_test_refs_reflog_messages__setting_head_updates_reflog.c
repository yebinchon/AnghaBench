
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_object ;
typedef int git_annotated_commit ;


 int GIT_HEAD_FILE ;
 int cl_git_pass (int ) ;
 int cl_reflog_check_entry (int ,int ,int,char*,char*,char*,char*) ;
 int g_repo ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_revspec (int **,int ,char*) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_repository_set_head (int ,char*) ;
 int git_repository_set_head_detached (int ,int ) ;
 int git_repository_set_head_detached_from_annotated (int ,int *) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;

void test_refs_reflog_messages__setting_head_updates_reflog(void)
{
 git_object *tag;
 git_signature *sig;
 git_annotated_commit *annotated;

 cl_git_pass(git_signature_now(&sig, "me", "foo@example.com"));

 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/haacked"));
 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/unborn"));
 cl_git_pass(git_revparse_single(&tag, g_repo, "tags/test"));
 cl_git_pass(git_repository_set_head_detached(g_repo, git_object_id(tag)));
 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/haacked"));
 cl_git_pass(git_repository_set_head(g_repo, "refs/tags/test"));
 cl_git_pass(git_repository_set_head(g_repo, "refs/remotes/test/master"));

 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 4,
  ((void*)0), "refs/heads/haacked",
  "foo@example.com",
  "checkout: moving from master to haacked");
 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 3,
  ((void*)0), "tags/test^{commit}",
  "foo@example.com",
  "checkout: moving from unborn to e90810b8df3e80c413d903f631643c716887138d");
 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 2,
  "tags/test^{commit}", "refs/heads/haacked",
  "foo@example.com",
  "checkout: moving from e90810b8df3e80c413d903f631643c716887138d to haacked");
 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 1,
  "refs/heads/haacked", "tags/test^{commit}",
  "foo@example.com",
  "checkout: moving from haacked to test");
 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 0,
  "tags/test^{commit}", "refs/remotes/test/master",
  "foo@example.com",
  "checkout: moving from e90810b8df3e80c413d903f631643c716887138d to test/master");

 cl_git_pass(git_annotated_commit_from_revspec(&annotated, g_repo, "haacked~0"));
 cl_git_pass(git_repository_set_head_detached_from_annotated(g_repo, annotated));

 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 0,
  ((void*)0), "refs/heads/haacked",
  "foo@example.com",
  "checkout: moving from be3563ae3f795b2b4353bcce3a527ad0a4f7f644 to haacked~0");

 git_annotated_commit_free(annotated);
 git_object_free(tag);
 git_signature_free(sig);
}
