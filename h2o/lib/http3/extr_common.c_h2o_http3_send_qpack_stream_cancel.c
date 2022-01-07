
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_http3_egress_unistream_t {int quic; TYPE_8__* sendbuf; } ;
typedef int quicly_stream_id_t ;
struct TYPE_12__ {int * base; } ;
typedef TYPE_4__ h2o_iovec_t ;
struct TYPE_9__ {int dec; } ;
struct TYPE_10__ {struct st_h2o_http3_egress_unistream_t* qpack_decoder; } ;
struct TYPE_11__ {TYPE_2__ egress; } ;
struct TYPE_13__ {TYPE_1__ qpack; TYPE_3__ _control_streams; } ;
typedef TYPE_5__ h2o_http3_conn_t ;
struct TYPE_14__ {scalar_t__ size; } ;


 scalar_t__ H2O_HPACK_ENCODE_INT_MAX_LENGTH ;
 int H2O_HTTP3_CHECK_SUCCESS (int) ;
 int assert (int ) ;
 TYPE_4__ h2o_buffer_reserve (TYPE_8__**,scalar_t__) ;
 scalar_t__ h2o_qpack_decoder_send_stream_cancel (int ,int *,int ) ;
 scalar_t__ quicly_stream_sync_sendbuf (int ,int) ;

void h2o_http3_send_qpack_stream_cancel(h2o_http3_conn_t *conn, quicly_stream_id_t stream_id)
{
    struct st_h2o_http3_egress_unistream_t *stream = conn->_control_streams.egress.qpack_decoder;


    h2o_iovec_t buf = h2o_buffer_reserve(&stream->sendbuf, stream->sendbuf->size + H2O_HPACK_ENCODE_INT_MAX_LENGTH);
    assert(buf.base != ((void*)0));
    stream->sendbuf->size += h2o_qpack_decoder_send_stream_cancel(conn->qpack.dec, (uint8_t *)buf.base, stream_id);


    H2O_HTTP3_CHECK_SUCCESS(quicly_stream_sync_sendbuf(stream->quic, 1) == 0);
}
