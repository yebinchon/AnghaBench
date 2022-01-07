
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; scalar_t__* ptr; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__* __coverity_alloc__ (size_t) ;
 int memmove (scalar_t__*,char const*,size_t) ;

int git_buf_put(git_buf *buf, const char *data, size_t len)
{
    buf->ptr = __coverity_alloc__(buf->size + len + 1);
    memmove(buf->ptr + buf->size, data, len);
    buf->size += len;
    buf->ptr[buf->size + len] = 0;
    return 0;
}
