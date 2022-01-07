
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_SYSDIR_TEMPLATE ;
 int git_sysdir_find_in_dirlist (int *,int *,int ,char*) ;

int git_sysdir_find_template_dir(git_buf *path)
{
 return git_sysdir_find_in_dirlist(
  path, ((void*)0), GIT_SYSDIR_TEMPLATE, "template");
}
