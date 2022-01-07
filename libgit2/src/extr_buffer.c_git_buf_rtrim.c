
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; char* ptr; int asize; } ;
typedef TYPE_1__ git_buf ;


 int git__isspace (char) ;

void git_buf_rtrim(git_buf *buf)
{
 while (buf->size > 0) {
  if (!git__isspace(buf->ptr[buf->size - 1]))
   break;

  buf->size--;
 }

 if (buf->asize > buf->size)
  buf->ptr[buf->size] = '\0';
}
