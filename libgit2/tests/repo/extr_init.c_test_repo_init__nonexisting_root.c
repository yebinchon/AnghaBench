
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_git_fail (int ) ;
 int clar__skip () ;
 int git_repository_init (int **,char*,int ) ;

void test_repo_init__nonexisting_root(void)
{
 clar__skip();

}
