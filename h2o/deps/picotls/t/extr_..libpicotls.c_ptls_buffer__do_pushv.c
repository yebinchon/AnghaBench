
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ off; scalar_t__ base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int memcpy (scalar_t__,void const*,size_t) ;
 int ptls_buffer_reserve (TYPE_1__*,size_t) ;

int ptls_buffer__do_pushv(ptls_buffer_t *buf, const void *src, size_t len)
{
    int ret;

    if (len == 0)
        return 0;
    if ((ret = ptls_buffer_reserve(buf, len)) != 0)
        return ret;
    memcpy(buf->base + buf->off, src, len);
    buf->off += len;
    return 0;
}
