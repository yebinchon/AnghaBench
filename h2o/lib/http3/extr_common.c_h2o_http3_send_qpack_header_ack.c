
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_http3_egress_unistream_t {int quic; int sendbuf; } ;
struct TYPE_5__ {struct st_h2o_http3_egress_unistream_t* qpack_encoder; } ;
struct TYPE_6__ {TYPE_1__ egress; } ;
struct TYPE_7__ {TYPE_2__ _control_streams; } ;
typedef TYPE_3__ h2o_http3_conn_t ;


 int H2O_HTTP3_CHECK_SUCCESS (int ) ;
 int assert (int ) ;
 int h2o_buffer_append (int *,void const*,size_t) ;
 int quicly_stream_sync_sendbuf (int ,int) ;

void h2o_http3_send_qpack_header_ack(h2o_http3_conn_t *conn, const void *bytes, size_t len)
{
    struct st_h2o_http3_egress_unistream_t *stream = conn->_control_streams.egress.qpack_encoder;

    assert(stream != ((void*)0));
    h2o_buffer_append(&stream->sendbuf, bytes, len);
    H2O_HTTP3_CHECK_SUCCESS(quicly_stream_sync_sendbuf(stream->quic, 1));
}
