
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ asize; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_len (TYPE_1__*) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_putc (TYPE_1__*,char) ;

int git_path_to_dir(git_buf *path)
{
 if (path->asize > 0 &&
  git_buf_len(path) > 0 &&
  path->ptr[git_buf_len(path) - 1] != '/')
  git_buf_putc(path, '/');

 return git_buf_oom(path) ? -1 : 0;
}
