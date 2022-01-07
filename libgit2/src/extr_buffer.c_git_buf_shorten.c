
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_clear (TYPE_1__*) ;
 int git_buf_truncate (TYPE_1__*,size_t) ;

void git_buf_shorten(git_buf *buf, size_t amount)
{
 if (buf->size > amount)
  git_buf_truncate(buf, buf->size - amount);
 else
  git_buf_clear(buf);
}
