
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ingress; } ;
typedef TYPE_1__ quicly_streambuf_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ quicly_stream_t ;


 int quicly_recvbuf_receive (TYPE_2__*,int *,size_t,void const*,size_t) ;

int quicly_streambuf_ingress_receive(quicly_stream_t *stream, size_t off, const void *src, size_t len)
{
    quicly_streambuf_t *sbuf = stream->data;
    return quicly_recvbuf_receive(stream, &sbuf->ingress, off, src, len);
}
