
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; scalar_t__ asize; } ;
typedef TYPE_1__ git_buf ;


 char* git_buf__oom ;
 int git_buf_init (TYPE_1__*,int ) ;

char *git_buf_detach(git_buf *buf)
{
 char *data = buf->ptr;

 if (buf->asize == 0 || buf->ptr == git_buf__oom)
  return ((void*)0);

 git_buf_init(buf, 0);

 return data;
}
