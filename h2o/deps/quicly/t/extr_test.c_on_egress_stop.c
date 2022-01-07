
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stop_sending; } ;
struct TYPE_6__ {TYPE_1__ error_received; } ;
typedef TYPE_2__ test_streambuf_t ;
struct TYPE_7__ {TYPE_2__* data; } ;
typedef TYPE_3__ quicly_stream_t ;


 int QUICLY_ERROR_IS_QUIC_APPLICATION (int) ;
 int assert (int ) ;

int on_egress_stop(quicly_stream_t *stream, int err)
{
    assert(QUICLY_ERROR_IS_QUIC_APPLICATION(err));
    test_streambuf_t *sbuf = stream->data;
    sbuf->error_received.stop_sending = err;
    return 0;
}
