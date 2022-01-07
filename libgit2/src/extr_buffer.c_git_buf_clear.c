
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; scalar_t__ asize; scalar_t__ size; } ;
typedef TYPE_1__ git_buf ;


 char* git_buf__initbuf ;

void git_buf_clear(git_buf *buf)
{
 buf->size = 0;

 if (!buf->ptr) {
  buf->ptr = git_buf__initbuf;
  buf->asize = 0;
 }

 if (buf->asize > 0)
  buf->ptr[0] = '\0';
}
