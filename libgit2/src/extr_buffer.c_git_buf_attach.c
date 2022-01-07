
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ptr; size_t size; int asize; } ;
typedef TYPE_1__ git_buf ;


 int ENSURE_SIZE (TYPE_1__*,size_t) ;
 int git_buf_dispose (TYPE_1__*) ;
 size_t strlen (char*) ;

int git_buf_attach(git_buf *buf, char *ptr, size_t asize)
{
 git_buf_dispose(buf);

 if (ptr) {
  buf->ptr = ptr;
  buf->size = strlen(ptr);
  if (asize)
   buf->asize = (asize < buf->size) ? buf->size + 1 : asize;
  else
   buf->asize = buf->size + 1;
 }

 ENSURE_SIZE(buf, asize);
 return 0;
}
