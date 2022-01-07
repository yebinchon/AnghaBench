
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_SYSDIR_PROGRAMDATA ;
 int git_sysdir_find_in_dirlist (int *,char const*,int ,char*) ;

int git_sysdir_find_programdata_file(git_buf *path, const char *filename)
{
 return git_sysdir_find_in_dirlist(
  path, filename, GIT_SYSDIR_PROGRAMDATA, "ProgramData");
}
