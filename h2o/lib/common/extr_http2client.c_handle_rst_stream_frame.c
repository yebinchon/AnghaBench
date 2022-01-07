
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_http2client_stream_t {int dummy; } ;
struct st_h2o_http2client_conn_t {scalar_t__ max_open_stream_id; } ;
typedef int h2o_http2_rst_stream_payload_t ;
struct TYPE_4__ {scalar_t__ stream_id; } ;
typedef TYPE_1__ h2o_http2_frame_t ;


 int H2O_HTTP2_ERROR_PROTOCOL ;
 int call_callback_with_error (struct st_h2o_http2client_stream_t*,int ) ;
 int close_stream (struct st_h2o_http2client_stream_t*) ;
 struct st_h2o_http2client_stream_t* get_stream (struct st_h2o_http2client_conn_t*,scalar_t__) ;
 int h2o_http2_decode_rst_stream_payload (int *,TYPE_1__*,char const**) ;
 int h2o_httpclient_error_refused_stream ;

__attribute__((used)) static int handle_rst_stream_frame(struct st_h2o_http2client_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_rst_stream_payload_t payload;
    struct st_h2o_http2client_stream_t *stream;
    int ret;

    if ((ret = h2o_http2_decode_rst_stream_payload(&payload, frame, err_desc)) != 0)
        return ret;
    if (frame->stream_id > conn->max_open_stream_id) {
        *err_desc = "unexpected stream id in RST_STREAM frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    stream = get_stream(conn, frame->stream_id);
    if (stream != ((void*)0)) {

        call_callback_with_error(stream, h2o_httpclient_error_refused_stream);
        close_stream(stream);
    }

    return 0;
}
