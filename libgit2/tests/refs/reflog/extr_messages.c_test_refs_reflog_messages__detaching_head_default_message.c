
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_HEAD_FILE ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_reflog_check_entry (int ,int ,int ,char*,char*,int *,char*) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int ,char*,char*,int,char*) ;
 int git_repository_detach_head (int ) ;
 int git_repository_head_detached (int ) ;

void test_refs_reflog_messages__detaching_head_default_message(void)
{
 git_reference *ref;

 cl_assert_equal_i(0, git_repository_head_detached(g_repo));

 cl_git_pass(git_repository_detach_head(g_repo));
 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 0,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  ((void*)0), "checkout: moving from master to a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 cl_assert_equal_i(1, git_repository_head_detached(g_repo));


 cl_git_pass(git_reference_symbolic_create(&ref, g_repo, "HEAD", "refs/heads/master",
             1, "REATTACH"));

 cl_reflog_check_entry(g_repo, GIT_HEAD_FILE, 0,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
  ((void*)0), "REATTACH");

 cl_assert_equal_i(0, git_repository_head_detached(g_repo));

 git_reference_free(ref);
}
