
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ h2o_send_state_t ;
struct TYPE_11__ {size_t bytes_sent; scalar_t__ upstream_refused; int send_server_timing; } ;
struct TYPE_12__ {TYPE_2__ req; int stream_id; int output_window; } ;
typedef TYPE_3__ h2o_http2_stream_t ;
struct TYPE_10__ {int window; } ;
struct TYPE_13__ {TYPE_1__ _write; } ;
typedef TYPE_4__ h2o_http2_conn_t ;
struct TYPE_14__ {scalar_t__ size; scalar_t__ bytes; } ;
typedef TYPE_5__ h2o_buffer_t ;


 int H2O_HTTP2_ERROR_PROTOCOL ;
 int H2O_HTTP2_ERROR_REFUSED_STREAM ;
 int H2O_HTTP2_FRAME_FLAG_END_STREAM ;
 scalar_t__ H2O_HTTP2_FRAME_HEADER_SIZE ;
 int H2O_HTTP2_FRAME_TYPE_DATA ;
 scalar_t__ H2O_SEND_STATE_ERROR ;
 scalar_t__ H2O_SEND_STATE_FINAL ;
 int assert (int ) ;
 int h2o_http2_encode_frame_header (void*,size_t,int ,int ,int ) ;
 int h2o_http2_encode_rst_stream_frame (TYPE_5__**,int ,int ) ;
 int h2o_http2_window_consume_window (int *,size_t) ;

__attribute__((used)) static void commit_data_header(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream, h2o_buffer_t **outbuf, size_t length,
                               h2o_send_state_t send_state)
{
    assert(outbuf != ((void*)0));

    if (length || send_state == H2O_SEND_STATE_FINAL) {
        h2o_http2_encode_frame_header(
            (void *)((*outbuf)->bytes + (*outbuf)->size), length, H2O_HTTP2_FRAME_TYPE_DATA,
            (send_state == H2O_SEND_STATE_FINAL && !stream->req.send_server_timing) ? H2O_HTTP2_FRAME_FLAG_END_STREAM : 0,
            stream->stream_id);
        h2o_http2_window_consume_window(&conn->_write.window, length);
        h2o_http2_window_consume_window(&stream->output_window, length);
        (*outbuf)->size += length + H2O_HTTP2_FRAME_HEADER_SIZE;
        stream->req.bytes_sent += length;
    }

    if (send_state == H2O_SEND_STATE_ERROR) {
        h2o_http2_encode_rst_stream_frame(
            outbuf, stream->stream_id, -(stream->req.upstream_refused ? H2O_HTTP2_ERROR_REFUSED_STREAM : H2O_HTTP2_ERROR_PROTOCOL));
    }
}
