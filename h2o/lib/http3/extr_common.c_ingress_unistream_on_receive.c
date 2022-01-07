
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_http3_ingress_unistream_t {int (* handle_input ) (int *,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;TYPE_2__* quic; TYPE_4__* recvbuf; } ;
struct TYPE_6__ {struct st_h2o_http3_ingress_unistream_t* data; int conn; } ;
typedef TYPE_1__ quicly_stream_t ;
typedef int h2o_http3_conn_t ;
struct TYPE_8__ {scalar_t__ bytes; } ;
struct TYPE_7__ {int recvstate; } ;


 int H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM ;
 int h2o_buffer_consume (TYPE_4__**,size_t) ;
 int h2o_http3_update_recvbuf (TYPE_4__**,size_t,void const*,size_t) ;
 int ** quicly_get_data (int ) ;
 int quicly_recvstate_bytes_available (int *) ;
 scalar_t__ quicly_recvstate_transfer_complete (int *) ;
 int quicly_stream_sync_recvbuf (TYPE_2__*,size_t) ;
 int stub1 (int *,struct st_h2o_http3_ingress_unistream_t*,int const**,int const*,char const**) ;

__attribute__((used)) static int ingress_unistream_on_receive(quicly_stream_t *qs, size_t off, const void *input, size_t len)
{
    h2o_http3_conn_t *conn = *quicly_get_data(qs->conn);
    struct st_h2o_http3_ingress_unistream_t *stream = qs->data;
    int ret;


    if ((ret = h2o_http3_update_recvbuf(&stream->recvbuf, off, input, len)) != 0)
        return ret;


    if (quicly_recvstate_transfer_complete(&stream->quic->recvstate))
        return H2O_HTTP3_ERROR_CLOSED_CRITICAL_STREAM;


    const uint8_t *src = (const uint8_t *)stream->recvbuf->bytes,
                  *src_end = src + quicly_recvstate_bytes_available(&stream->quic->recvstate);
    if (src == src_end)
        return 0;


    const char *err_desc = ((void*)0);
    ret = stream->handle_input(conn, stream, &src, src_end, &err_desc);


    size_t bytes_consumed = src - (const uint8_t *)stream->recvbuf->bytes;
    if (bytes_consumed != 0) {
        h2o_buffer_consume(&stream->recvbuf, bytes_consumed);
        quicly_stream_sync_recvbuf(stream->quic, bytes_consumed);
    }

    return ret;
}
