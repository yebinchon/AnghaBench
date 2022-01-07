
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int window_size_increment; } ;
typedef TYPE_2__ h2o_http2_window_update_payload_t ;
typedef int h2o_http2_stream_t ;
struct TYPE_16__ {int stream_id; } ;
typedef TYPE_3__ h2o_http2_frame_t ;
struct TYPE_14__ {int window; } ;
struct TYPE_17__ {TYPE_1__ _write; } ;
typedef TYPE_4__ h2o_http2_conn_t ;


 int H2O_HTTP2_ERROR_FLOW_CONTROL ;
 int H2O_HTTP2_ERROR_PROTOCOL ;
 int * h2o_http2_conn_get_stream (TYPE_4__*,int ) ;
 int h2o_http2_decode_window_update_payload (TYPE_2__*,TYPE_3__*,char const**,int*) ;
 int h2o_http2_stream_reset (TYPE_4__*,int *) ;
 scalar_t__ h2o_http2_window_update (int *,int ) ;
 int is_idle_stream_id (TYPE_4__*,int ) ;
 int resume_send (TYPE_4__*) ;
 int stream_send_error (TYPE_4__*,int ,int) ;
 scalar_t__ update_stream_output_window (int *,int ) ;

__attribute__((used)) static int handle_window_update_frame(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_window_update_payload_t payload;
    int ret, err_is_stream_level;

    if ((ret = h2o_http2_decode_window_update_payload(&payload, frame, err_desc, &err_is_stream_level)) != 0) {
        if (err_is_stream_level) {
            h2o_http2_stream_t *stream = h2o_http2_conn_get_stream(conn, frame->stream_id);
            if (stream != ((void*)0))
                h2o_http2_stream_reset(conn, stream);
            stream_send_error(conn, frame->stream_id, ret);
            return 0;
        } else {
            return ret;
        }
    }

    if (frame->stream_id == 0) {
        if (h2o_http2_window_update(&conn->_write.window, payload.window_size_increment) != 0) {
            *err_desc = "flow control window overflow";
            return H2O_HTTP2_ERROR_FLOW_CONTROL;
        }
    } else if (!is_idle_stream_id(conn, frame->stream_id)) {
        h2o_http2_stream_t *stream = h2o_http2_conn_get_stream(conn, frame->stream_id);
        if (stream != ((void*)0)) {
            if (update_stream_output_window(stream, payload.window_size_increment) != 0) {
                h2o_http2_stream_reset(conn, stream);
                stream_send_error(conn, frame->stream_id, H2O_HTTP2_ERROR_FLOW_CONTROL);
                return 0;
            }
        }
    } else {
        *err_desc = "invalid stream id in WINDOW_UPDATE frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    resume_send(conn);

    return 0;
}
