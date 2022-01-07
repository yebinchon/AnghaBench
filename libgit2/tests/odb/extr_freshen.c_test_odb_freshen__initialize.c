
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_repository_odb (int *,int ) ;
 int odb ;
 int repo ;

void test_odb_freshen__initialize(void)
{
 repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_repository_odb(&odb, repo));
}
