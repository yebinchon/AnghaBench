
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIR_ENVIRONMENT ;
 int _ (char*) ;
 int die (int ,char const*) ;
 scalar_t__ setenv (int ,char const*,int) ;
 int setup_git_env (char const*) ;

__attribute__((used)) static void set_git_dir_1(const char *path)
{
 if (setenv(GIT_DIR_ENVIRONMENT, path, 1))
  die(_("could not set GIT_DIR to '%s'"), path);
 setup_git_env(path);
}
