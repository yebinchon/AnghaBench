
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_CONFIG_FILENAME_GLOBAL ;
 char const GIT_PATH_LIST_SEPARATOR ;
 int GIT_SYSDIR_GLOBAL ;
 char* git_buf_cstr (TYPE_1__ const*) ;
 int git_buf_joinpath (TYPE_1__*,int ,int ) ;
 int git_buf_len (TYPE_1__ const*) ;
 scalar_t__ git_buf_set (TYPE_1__*,char const*,size_t) ;
 scalar_t__ git_sysdir_get (TYPE_1__ const**,int ) ;

int git_config__global_location(git_buf *buf)
{
 const git_buf *paths;
 const char *sep, *start;

 if (git_sysdir_get(&paths, GIT_SYSDIR_GLOBAL) < 0)
  return -1;


 if (!paths || !git_buf_len(paths))
  return -1;


 for (sep = start = git_buf_cstr(paths); *sep; ++sep) {
  if (*sep == GIT_PATH_LIST_SEPARATOR &&
   (sep <= start || sep[-1] != '\\'))
   break;
 }

 if (git_buf_set(buf, start, (size_t)(sep - start)) < 0)
  return -1;

 return git_buf_joinpath(buf, buf->ptr, GIT_CONFIG_FILENAME_GLOBAL);
}
