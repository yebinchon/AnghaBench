
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_MKDIR_PATH ;
 int GIT_MKDIR_SKIP_LAST ;
 int cl_git_mkfile (char const*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char const*) ;
 int g_repo ;
 int git_futils_mkdir_relative (char const*,char const*,int,int,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void make_test_data(const char *reponame, const char **files)
{
 const char **scan;
 size_t repolen = strlen(reponame) + 1;

 g_repo = cl_git_sandbox_init(reponame);

 for (scan = files; *scan != ((void*)0); ++scan) {
  cl_git_pass(git_futils_mkdir_relative(
   *scan + repolen, reponame,
   0777, GIT_MKDIR_PATH | GIT_MKDIR_SKIP_LAST, ((void*)0)));
  cl_git_mkfile(*scan, "contents");
 }
}
