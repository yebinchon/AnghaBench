
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_http2_stream_t ;
typedef int h2o_http2_rst_stream_payload_t ;
struct TYPE_4__ {int stream_id; } ;
typedef TYPE_1__ h2o_http2_frame_t ;
typedef int h2o_http2_conn_t ;


 int H2O_HTTP2_ERROR_PROTOCOL ;
 int * h2o_http2_conn_get_stream (int *,int ) ;
 int h2o_http2_decode_rst_stream_payload (int *,TYPE_1__*,char const**) ;
 int h2o_http2_stream_reset (int *,int *) ;
 scalar_t__ is_idle_stream_id (int *,int ) ;

__attribute__((used)) static int handle_rst_stream_frame(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_rst_stream_payload_t payload;
    h2o_http2_stream_t *stream;
    int ret;

    if ((ret = h2o_http2_decode_rst_stream_payload(&payload, frame, err_desc)) != 0)
        return ret;
    if (is_idle_stream_id(conn, frame->stream_id)) {
        *err_desc = "unexpected stream id in RST_STREAM frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    stream = h2o_http2_conn_get_stream(conn, frame->stream_id);
    if (stream != ((void*)0)) {

        h2o_http2_stream_reset(conn, stream);
    }


    return 0;
}
