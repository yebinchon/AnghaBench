
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_CONFIG_FILENAME_PROGRAMDATA ;
 int GIT_OK ;
 int git_buf_sanitize (TYPE_1__*) ;
 int git_path_validate_system_file_ownership (int ) ;
 int git_sysdir_find_programdata_file (TYPE_1__*,int ) ;

int git_config_find_programdata(git_buf *path)
{
 int ret;

 git_buf_sanitize(path);
 ret = git_sysdir_find_programdata_file(path,
            GIT_CONFIG_FILENAME_PROGRAMDATA);
 if (ret != GIT_OK)
  return ret;

 return git_path_validate_system_file_ownership(path->ptr);
}
