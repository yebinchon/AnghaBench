
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_CONFIG_FILENAME_GLOBAL ;
 int git_buf_sanitize (int *) ;
 int git_sysdir_find_global_file (int *,int ) ;

int git_config_find_global(git_buf *path)
{
 git_buf_sanitize(path);
 return git_sysdir_find_global_file(path, GIT_CONFIG_FILENAME_GLOBAL);
}
