
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int __coverity_alloc__ (size_t) ;
 int memmove (int ,void const*,size_t) ;

int git_buf_set(git_buf *buf, const void *data, size_t len)
{
    buf->ptr = __coverity_alloc__(len + 1);
    memmove(buf->ptr, data, len);
    buf->size = len + 1;
    return 0;
}
