
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int quicly_stream_t ;
struct TYPE_4__ {size_t off; scalar_t__ base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int memcpy (scalar_t__,void const*,size_t) ;
 int ptls_buffer_reserve (TYPE_1__*,size_t) ;

int quicly_recvbuf_receive(quicly_stream_t *stream, ptls_buffer_t *rb, size_t off, const void *src, size_t len)
{
    if (len != 0) {
        int ret;
        if ((ret = ptls_buffer_reserve(rb, off + len - rb->off)) != 0)
            return ret;
        memcpy(rb->base + off, src, len);
        if (rb->off < off + len)
            rb->off = off + len;
    }
    return 0;
}
