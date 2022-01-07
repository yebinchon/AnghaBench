
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_TREE ;
 int git_error_set (int ,char*,char const*,...) ;

__attribute__((used)) static int tree_error(const char *str, const char *path)
{
 if (path)
  git_error_set(GIT_ERROR_TREE, "%s - %s", str, path);
 else
  git_error_set(GIT_ERROR_TREE, "%s", str);
 return -1;
}
