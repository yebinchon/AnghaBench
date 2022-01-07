
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_28__ {scalar_t__ len; } ;
typedef TYPE_6__ h2o_iovec_t ;
struct TYPE_26__ {scalar_t__ (* cb ) (int ,TYPE_6__,int) ;int ctx; } ;
struct TYPE_27__ {size_t req_body_bytes_received; size_t content_length; TYPE_4__ write_req; int * proceed_req; } ;
struct TYPE_29__ {scalar_t__ state; scalar_t__ _req_streaming_in_progress; int stream_id; TYPE_5__ req; int blocked_by_server; } ;
typedef TYPE_7__ h2o_http2_stream_t ;
struct TYPE_25__ {TYPE_2__* ctx; } ;
struct TYPE_30__ {TYPE_3__ super; } ;
typedef TYPE_8__ h2o_http2_conn_t ;
struct TYPE_24__ {TYPE_1__* globalconf; } ;
struct TYPE_23__ {size_t max_request_entity_size; } ;


 int H2O_HTTP2_ERROR_PROTOCOL ;
 int H2O_HTTP2_ERROR_REFUSED_STREAM ;
 int H2O_HTTP2_ERROR_STREAM_CLOSED ;
 scalar_t__ H2O_HTTP2_STREAM_STATE_END_STREAM ;
 scalar_t__ H2O_HTTP2_STREAM_STATE_REQ_PENDING ;
 scalar_t__ H2O_HTTP2_STREAM_STATE_SEND_HEADERS ;
 size_t SIZE_MAX ;
 int finish_body_streaming (TYPE_7__*) ;
 int h2o_http2_stream_close (TYPE_8__*,TYPE_7__*) ;
 int h2o_http2_stream_reset (TYPE_8__*,TYPE_7__*) ;
 int h2o_http2_stream_set_blocked_by_server (TYPE_8__*,TYPE_7__*,int) ;
 int h2o_http2_stream_set_state (TYPE_8__*,TYPE_7__*,scalar_t__) ;
 int stream_send_error (TYPE_8__*,int ,int ) ;
 scalar_t__ stub1 (int ,TYPE_6__,int) ;

__attribute__((used)) static void handle_request_body_chunk(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream, h2o_iovec_t payload, int is_end_stream)
{
    stream->req.req_body_bytes_received += payload.len;


    if (stream->req.req_body_bytes_received > conn->super.ctx->globalconf->max_request_entity_size) {
        stream_send_error(conn, stream->stream_id, H2O_HTTP2_ERROR_REFUSED_STREAM);
        h2o_http2_stream_reset(conn, stream);
        return;
    }
    if (stream->req.content_length != SIZE_MAX) {
        size_t received = stream->req.req_body_bytes_received, cl = stream->req.content_length;
        if (is_end_stream ? (received != cl) : (received > cl)) {
            stream_send_error(conn, stream->stream_id, H2O_HTTP2_ERROR_PROTOCOL);
            h2o_http2_stream_reset(conn, stream);
            return;
        }
    }


    if (!stream->blocked_by_server)
        h2o_http2_stream_set_blocked_by_server(conn, stream, 1);


    if (is_end_stream && stream->state < H2O_HTTP2_STREAM_STATE_REQ_PENDING) {
        h2o_http2_stream_set_state(conn, stream, H2O_HTTP2_STREAM_STATE_REQ_PENDING);
        if (stream->req.proceed_req != ((void*)0))
            h2o_http2_stream_set_state(conn, stream, H2O_HTTP2_STREAM_STATE_SEND_HEADERS);
    }
    if (stream->req.write_req.cb(stream->req.write_req.ctx, payload, is_end_stream) != 0) {
        stream_send_error(conn, stream->stream_id, H2O_HTTP2_ERROR_STREAM_CLOSED);
        h2o_http2_stream_reset(conn, stream);
        return;
    }

    if (is_end_stream) {
        if (stream->_req_streaming_in_progress) {
            finish_body_streaming(stream);
        }
        if (stream->state == H2O_HTTP2_STREAM_STATE_END_STREAM) {
            h2o_http2_stream_close(conn, stream);
        }
    }
}
