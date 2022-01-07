
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* ptr; size_t size; scalar_t__ asize; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_init (TYPE_1__*,int ) ;
 scalar_t__ git_buf_is_allocated (TYPE_1__*) ;

void git_buf_attach_notowned(git_buf *buf, const char *ptr, size_t size)
{
 if (git_buf_is_allocated(buf))
  git_buf_dispose(buf);

 if (!size) {
  git_buf_init(buf, 0);
 } else {
  buf->ptr = (char *)ptr;
  buf->asize = 0;
  buf->size = size;
 }
}
