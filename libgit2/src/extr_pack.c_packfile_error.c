
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_ODB ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int packfile_error(const char *message)
{
 git_error_set(GIT_ERROR_ODB, "invalid pack file - %s", message);
 return -1;
}
