
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int * g_bufferblame ;
 int g_fileblame ;
 int g_repo ;
 int git_blame_file (int *,int ,char*,int *) ;
 int git_repository_open (int *,int ) ;

void test_blame_buffer__initialize(void)
{
 cl_git_pass(git_repository_open(&g_repo, cl_fixture("blametest.git")));
 cl_git_pass(git_blame_file(&g_fileblame, g_repo, "b.txt", ((void*)0)));
 g_bufferblame = ((void*)0);
}
