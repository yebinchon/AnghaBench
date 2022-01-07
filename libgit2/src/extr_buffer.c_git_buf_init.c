
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; scalar_t__ size; scalar_t__ asize; } ;
typedef TYPE_1__ git_buf ;


 int ENSURE_SIZE (TYPE_1__*,size_t) ;
 int git_buf__initbuf ;

int git_buf_init(git_buf *buf, size_t initial_size)
{
 buf->asize = 0;
 buf->size = 0;
 buf->ptr = git_buf__initbuf;

 ENSURE_SIZE(buf, initial_size);

 return 0;
}
