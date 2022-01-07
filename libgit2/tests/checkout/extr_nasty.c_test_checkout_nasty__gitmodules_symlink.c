
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_repo_set_bool (int ,char*,int) ;
 int repo ;
 int test_checkout_fails (char*,char*) ;

void test_checkout_nasty__gitmodules_symlink(void)
{
 cl_repo_set_bool(repo, "core.protectHFS", 1);
 test_checkout_fails("refs/heads/gitmodules-symlink", ".gitmodules");
 cl_repo_set_bool(repo, "core.protectHFS", 0);

 cl_repo_set_bool(repo, "core.protectNTFS", 1);
 test_checkout_fails("refs/heads/gitmodules-symlink", ".gitmodules");
 cl_repo_set_bool(repo, "core.protectNTFS", 0);

 test_checkout_fails("refs/heads/gitmodules-symlink", ".gitmodules");
}
