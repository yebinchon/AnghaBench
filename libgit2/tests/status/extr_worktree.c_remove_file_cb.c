
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_RMDIR_REMOVE_FILES ;
 int GIT_UNUSED (void*) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__suffixcmp (char const*,char*) ;
 char* git_buf_cstr (int *) ;
 int git_futils_rmdir_r (char const*,int *,int ) ;
 scalar_t__ git_path_isdir (char const*) ;
 int p_unlink (char*) ;

__attribute__((used)) static int remove_file_cb(void *data, git_buf *file)
{
 const char *filename = git_buf_cstr(file);

 GIT_UNUSED(data);

 if (git__suffixcmp(filename, ".git") == 0)
  return 0;

 if (git_path_isdir(filename))
  cl_git_pass(git_futils_rmdir_r(filename, ((void*)0), GIT_RMDIR_REMOVE_FILES));
 else
  cl_git_pass(p_unlink(git_buf_cstr(file)));

 return 0;
}
