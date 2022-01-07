
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_HEAD_FILE ;
 int cl_assert_equal_i (size_t,size_t) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_repository_set_head (int ,char*) ;
 size_t reflog_entrycount (int ,int ) ;

void test_refs_reflog_messages__setting_head_to_same_target_ignores_reflog(void)
{
 size_t nentries, nentries_after;

 nentries = reflog_entrycount(g_repo, GIT_HEAD_FILE);

 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/haacked"));
 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/haacked"));

 nentries_after = reflog_entrycount(g_repo, GIT_HEAD_FILE);

 cl_assert_equal_i(nentries + 1, nentries_after);
}
