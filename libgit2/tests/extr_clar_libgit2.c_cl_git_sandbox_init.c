
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int F_OK ;
 int * _cl_repo ;
 char const* _cl_sandbox ;
 char* cl_fixture_basename (char const*) ;
 int cl_fixture_sandbox (char const*) ;
 int cl_git_pass (int ) ;
 int cl_rename (char*,char*) ;
 int git_repository_open (int **,char const*) ;
 int git_repository_reinit_filesystem (int *,int ) ;
 scalar_t__ p_access (char*,int ) ;
 int p_chdir (char const*) ;

git_repository *cl_git_sandbox_init(const char *sandbox)
{

 const char *basename = cl_fixture_basename(sandbox);




 cl_fixture_sandbox(sandbox);
 _cl_sandbox = sandbox;

 cl_git_pass(p_chdir(basename));





 if (p_access(".gitted", F_OK) == 0)
  cl_git_pass(cl_rename(".gitted", ".git"));





 if (p_access("gitattributes", F_OK) == 0)
  cl_git_pass(cl_rename("gitattributes", ".gitattributes"));


 if (p_access("gitignore", F_OK) == 0)
  cl_git_pass(cl_rename("gitignore", ".gitignore"));

 cl_git_pass(p_chdir(".."));


 cl_git_pass(git_repository_open(&_cl_repo, basename));


 cl_git_pass(git_repository_reinit_filesystem(_cl_repo, 0));

 return _cl_repo;
}
