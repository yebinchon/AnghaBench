
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ resolve_gitdir_gently (char*,int*) ;
 char* xstrfmt (char*,char const*) ;

int is_submodule_populated_gently(const char *path, int *return_error_code)
{
 int ret = 0;
 char *gitdir = xstrfmt("%s/.git", path);

 if (resolve_gitdir_gently(gitdir, return_error_code))
  ret = 1;

 free(gitdir);
 return ret;
}
