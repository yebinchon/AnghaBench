
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int quicly_stream_t ;
struct TYPE_3__ {size_t off; scalar_t__ base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int assert (int) ;
 int memmove (scalar_t__,scalar_t__,size_t) ;
 int quicly_stream_sync_recvbuf (int *,size_t) ;

void quicly_recvbuf_shift(quicly_stream_t *stream, ptls_buffer_t *rb, size_t delta)
{
    assert(delta <= rb->off);
    rb->off -= delta;
    memmove(rb->base, rb->base + delta, rb->off);

    quicly_stream_sync_recvbuf(stream, delta);
}
