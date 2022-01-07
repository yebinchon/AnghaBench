
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int * _cl_repo ;
 char const* _cl_sandbox ;
 int cl_git_pass (int ) ;
 int git_repository_init (int **,char const*,int) ;

git_repository *cl_git_sandbox_init_new(const char *sandbox)
{
 cl_git_pass(git_repository_init(&_cl_repo, sandbox, 0));
 _cl_sandbox = sandbox;

 return _cl_repo;
}
