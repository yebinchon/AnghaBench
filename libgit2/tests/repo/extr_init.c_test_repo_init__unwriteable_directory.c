
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_git_fail (int ) ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 scalar_t__ geteuid () ;
 int git_repository_init (int **,char*,int ) ;
 int p_mkdir (char*,int) ;
 int p_rmdir (char*) ;

void test_repo_init__unwriteable_directory(void)
{

 git_repository *repo;

 if (geteuid() == 0)
  clar__skip();







 cl_must_pass(p_mkdir("unwriteable", 0444));
 cl_git_fail(git_repository_init(&repo, "unwriteable/repo", 0));
 cl_must_pass(p_rmdir("unwriteable"));



}
