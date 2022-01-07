
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert_equal_i (unsigned int,unsigned int) ;
 int cl_git_pass (unsigned int) ;
 unsigned int git_status_file (unsigned int*,int *,char const*) ;

void assert_status(
 git_repository *repo,
 const char *path,
 int status_flags)
{
 unsigned int status;

 if (status_flags < 0)
  cl_assert_equal_i(status_flags, git_status_file(&status, repo, path));
 else {
  cl_git_pass(git_status_file(&status, repo, path));
  cl_assert_equal_i((unsigned int)status_flags, status);
 }
}
