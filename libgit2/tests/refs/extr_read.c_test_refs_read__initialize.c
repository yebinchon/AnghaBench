
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_repository_open (int *,int ) ;

void test_refs_read__initialize(void)
{
 cl_git_pass(git_repository_open(&g_repo, cl_fixture("testrepo.git")));
}
