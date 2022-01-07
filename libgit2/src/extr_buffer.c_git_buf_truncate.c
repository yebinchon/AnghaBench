
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; size_t asize; char* ptr; } ;
typedef TYPE_1__ git_buf ;



void git_buf_truncate(git_buf *buf, size_t len)
{
 if (len >= buf->size)
  return;

 buf->size = len;
 if (buf->size < buf->asize)
  buf->ptr[buf->size] = '\0';
}
