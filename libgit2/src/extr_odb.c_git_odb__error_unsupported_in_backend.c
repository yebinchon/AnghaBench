
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_ODB ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int git_odb__error_unsupported_in_backend(const char *action)
{
 git_error_set(GIT_ERROR_ODB,
  "cannot %s - unsupported in the loaded odb backends", action);
 return -1;
}
