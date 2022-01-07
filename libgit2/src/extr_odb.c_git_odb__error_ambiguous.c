
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EAMBIGUOUS ;
 int GIT_ERROR_ODB ;
 int git_error_set (int ,char*,char const*) ;

int git_odb__error_ambiguous(const char *message)
{
 git_error_set(GIT_ERROR_ODB, "ambiguous SHA1 prefix - %s", message);
 return GIT_EAMBIGUOUS;
}
