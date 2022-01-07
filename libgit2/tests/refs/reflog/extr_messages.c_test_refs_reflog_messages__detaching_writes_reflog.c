
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_oid ;


 int GIT_HEAD_FILE ;
 int cl_git_pass (int ) ;
 int cl_reflog_check_entry (int ,int ,int ,char*,char*,int *,char const*) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_set_head (int ,char*) ;
 int git_repository_set_head_detached (int ,int *) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;

void test_refs_reflog_messages__detaching_writes_reflog(void)
{
 git_signature *sig;
 git_oid id;
 const char *msg;

 cl_git_pass(git_signature_now(&sig, "me", "foo@example.com"));

 msg = "checkout: moving from master to e90810b8df3e80c413d903f631643c716887138d";
 git_oid_fromstr(&id, "e90810b8df3e80c413d903f631643c716887138d");
 cl_git_pass(git_repository_set_head_detached(g_repo, &id));
 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 0,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "e90810b8df3e80c413d903f631643c716887138d",
  ((void*)0), msg);

 msg = "checkout: moving from e90810b8df3e80c413d903f631643c716887138d to haacked";
 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/haacked"));
 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 0,
  "e90810b8df3e80c413d903f631643c716887138d",
  "258f0e2a959a364e40ed6603d5d44fbb24765b10",
  ((void*)0), msg);

 git_signature_free(sig);
}
