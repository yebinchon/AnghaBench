
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bytes_written; } ;
struct TYPE_7__ {TYPE_1__ egress; } ;
typedef TYPE_2__ quicly_streambuf_t ;
struct TYPE_8__ {int sendstate; TYPE_2__* data; } ;
typedef TYPE_3__ quicly_stream_t ;


 int quicly_sendstate_shutdown (int *,int ) ;
 int quicly_stream_sync_sendbuf (TYPE_3__*,int) ;

int quicly_streambuf_egress_shutdown(quicly_stream_t *stream)
{
    quicly_streambuf_t *sbuf = stream->data;
    quicly_sendstate_shutdown(&stream->sendstate, sbuf->egress.bytes_written);
    return quicly_stream_sync_sendbuf(stream, 1);
}
