
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; scalar_t__ asize; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int assert (int ) ;
 int memmove (char*,int ,size_t) ;

void git_buf_copy_cstr(char *data, size_t datasize, const git_buf *buf)
{
 size_t copylen;

 assert(data && datasize && buf);

 data[0] = '\0';

 if (buf->size == 0 || buf->asize <= 0)
  return;

 copylen = buf->size;
 if (copylen > datasize - 1)
  copylen = datasize - 1;
 memmove(data, buf->ptr, copylen);
 data[copylen] = '\0';
}
