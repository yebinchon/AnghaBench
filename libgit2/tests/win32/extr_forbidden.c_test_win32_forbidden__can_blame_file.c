
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_blame ;


 int cl_git_pass (int ) ;
 int git_blame_file (int **,int ,char*,int *) ;
 int git_blame_free (int *) ;
 int repo ;

void test_win32_forbidden__can_blame_file(void)
{
 git_blame *blame;

 cl_git_pass(git_blame_file(&blame, repo, "aux", ((void*)0)));
 git_blame_free(blame);
}
