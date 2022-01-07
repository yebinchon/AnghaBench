
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; scalar_t__ size; scalar_t__ asize; } ;
typedef TYPE_1__ git_buf ;


 int assert (int) ;
 char* git_buf__initbuf ;

void git_buf_sanitize(git_buf *buf)
{
 if (buf->ptr == ((void*)0)) {
  assert(buf->size == 0 && buf->asize == 0);
  buf->ptr = git_buf__initbuf;
 } else if (buf->asize > buf->size)
  buf->ptr[buf->size] = '\0';
}
