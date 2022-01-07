
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int window; } ;
struct TYPE_23__ {scalar_t__ state; TYPE_2__ input_window; int _req_streaming_in_progress; } ;
typedef TYPE_3__ h2o_http2_stream_t ;
struct TYPE_24__ {scalar_t__ length; scalar_t__ stream_id; int flags; } ;
typedef TYPE_4__ h2o_http2_frame_t ;
struct TYPE_25__ {scalar_t__ length; int data; } ;
typedef TYPE_5__ h2o_http2_data_payload_t ;
struct TYPE_21__ {scalar_t__ max_open; } ;
struct TYPE_26__ {TYPE_1__ pull_stream_ids; int _input_window; } ;
typedef TYPE_6__ h2o_http2_conn_t ;


 int H2O_HTTP2_ERROR_PROTOCOL ;
 int H2O_HTTP2_ERROR_STREAM_CLOSED ;
 int H2O_HTTP2_FRAME_FLAG_END_STREAM ;
 int H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE ;
 scalar_t__ H2O_HTTP2_STREAM_STATE_RECV_BODY ;
 TYPE_3__* h2o_http2_conn_get_stream (TYPE_6__*,scalar_t__) ;
 int h2o_http2_decode_data_payload (TYPE_5__*,TYPE_4__*,char const**) ;
 int h2o_http2_stream_reset (TYPE_6__*,TYPE_3__*) ;
 int h2o_http2_window_consume_window (int *,scalar_t__) ;
 int h2o_http2_window_get_avail (int *) ;
 int h2o_iovec_init (int ,scalar_t__) ;
 int handle_request_body_chunk (TYPE_6__*,TYPE_3__*,int ,int) ;
 int send_window_update (TYPE_6__*,int ,int *,int) ;
 int stream_send_error (TYPE_6__*,scalar_t__,int ) ;
 int update_stream_input_window (TYPE_6__*,TYPE_3__*,scalar_t__) ;

__attribute__((used)) static int handle_data_frame(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_data_payload_t payload;
    h2o_http2_stream_t *stream;
    int ret;

    if ((ret = h2o_http2_decode_data_payload(&payload, frame, err_desc)) != 0)
        return ret;


    h2o_http2_window_consume_window(&conn->_input_window, frame->length);
    if (h2o_http2_window_get_avail(&conn->_input_window) <= H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE / 2)
        send_window_update(conn, 0, &conn->_input_window,
                           H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE - h2o_http2_window_get_avail(&conn->_input_window));


    if ((stream = h2o_http2_conn_get_stream(conn, frame->stream_id)) == ((void*)0)) {
        if (frame->stream_id <= conn->pull_stream_ids.max_open) {
            stream_send_error(conn, frame->stream_id, H2O_HTTP2_ERROR_STREAM_CLOSED);
            return 0;
        } else {
            *err_desc = "invalid DATA frame";
            return H2O_HTTP2_ERROR_PROTOCOL;
        }
    }
    if (stream->state != H2O_HTTP2_STREAM_STATE_RECV_BODY && !stream->_req_streaming_in_progress) {
        stream_send_error(conn, frame->stream_id, H2O_HTTP2_ERROR_STREAM_CLOSED);
        h2o_http2_stream_reset(conn, stream);
        return 0;
    }



    h2o_http2_window_consume_window(&stream->input_window.window, frame->length);
    if (frame->length != payload.length)
        update_stream_input_window(conn, stream, frame->length - payload.length);


    if (payload.length != 0 || (frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) != 0)
        handle_request_body_chunk(conn, stream, h2o_iovec_init(payload.data, payload.length),
                                  (frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) != 0);

    return 0;
}
