
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int GIT_RMDIR_REMOVE_BLOCKERS ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char const*,char*) ;
 int git_futils_mkpath2file (char const*,int) ;
 int git_futils_rmdir_r (char const*,int *,int) ;

__attribute__((used)) static void force_create_file(const char *file)
{
 int error = git_futils_rmdir_r(file, ((void*)0),
  GIT_RMDIR_REMOVE_FILES | GIT_RMDIR_REMOVE_BLOCKERS);
 cl_assert(!error || error == GIT_ENOTFOUND);
 cl_git_pass(git_futils_mkpath2file(file, 0777));
 cl_git_rewritefile(file, "yowza!!");
}
