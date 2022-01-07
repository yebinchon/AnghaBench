
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_sysdir_find_global_file (TYPE_1__*,int *) ;

int git_sysdir_expand_global_file(git_buf *path, const char *filename)
{
 int error;

 if ((error = git_sysdir_find_global_file(path, ((void*)0))) == 0) {
  if (filename)
   error = git_buf_joinpath(path, path->ptr, filename);
 }

 return error;
}
