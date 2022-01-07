
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_checked_out (int ,char*,int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int repo ;

void test_refs_branches_checkedout__head_is_not_checked_out(void)
{
 repo = cl_git_sandbox_init("testrepo");
 assert_checked_out(repo, "HEAD", 0);
 cl_git_sandbox_cleanup();
}
