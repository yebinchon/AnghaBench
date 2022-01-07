
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_repo_set_bool (int ,char*,int) ;
 int repo ;
 int test_checkout_fails (char*,char*) ;

void test_checkout_nasty__honors_core_protectntfs(void)
{
 cl_repo_set_bool(repo, "core.protectNTFS", 1);

 test_checkout_fails("refs/heads/dotgit_backslash_path", ".git/foobar");
 test_checkout_fails("refs/heads/dotcapitalgit_backslash_path", ".GIT/foobar");
 test_checkout_fails("refs/heads/dot_git_dot", ".git/foobar");
 test_checkout_fails("refs/heads/git_tilde1", ".git/foobar");
}
