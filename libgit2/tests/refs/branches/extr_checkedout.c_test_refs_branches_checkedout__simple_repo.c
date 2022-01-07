
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_checked_out (int ,char*,int) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int repo ;

void test_refs_branches_checkedout__simple_repo(void)
{
 repo = cl_git_sandbox_init("testrepo");
 assert_checked_out(repo, "refs/heads/master", 1);
 assert_checked_out(repo, "refs/heads/executable", 0);
 cl_git_sandbox_cleanup();
}
