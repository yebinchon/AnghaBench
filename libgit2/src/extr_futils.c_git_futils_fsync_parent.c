
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__free (char*) ;
 int git_futils_fsync_dir (char*) ;
 char* git_path_dirname (char const*) ;

int git_futils_fsync_parent(const char *path)
{
 char *parent;
 int error;

 if ((parent = git_path_dirname(path)) == ((void*)0))
  return -1;

 error = git_futils_fsync_dir(parent);
 git__free(parent);
 return error;
}
