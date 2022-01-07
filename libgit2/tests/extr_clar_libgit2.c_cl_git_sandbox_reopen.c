
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int * _cl_repo ;
 int _cl_sandbox ;
 int cl_fixture_basename (int ) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

git_repository *cl_git_sandbox_reopen(void)
{
 if (_cl_repo) {
  git_repository_free(_cl_repo);
  _cl_repo = ((void*)0);

  cl_git_pass(git_repository_open(
   &_cl_repo, cl_fixture_basename(_cl_sandbox)));
 }

 return _cl_repo;
}
