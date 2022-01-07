
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_open (int *,int ) ;
 int repo ;

void test_refs_branches_name__initialize(void)
{
 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));
}
