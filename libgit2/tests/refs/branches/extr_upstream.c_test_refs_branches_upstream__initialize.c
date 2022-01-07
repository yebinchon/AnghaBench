
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * branch ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_open (int *,int ) ;
 int repo ;
 int * upstream ;

void test_refs_branches_upstream__initialize(void)
{
 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));

 branch = ((void*)0);
 upstream = ((void*)0);
}
