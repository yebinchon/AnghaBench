
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int stream_id; } ;
typedef TYPE_2__ h2o_http2_stream_t ;
struct TYPE_9__ {int buf; } ;
struct TYPE_11__ {TYPE_1__ _write; } ;
typedef TYPE_3__ h2o_http2_conn_t ;


 int H2O_HTTP2_ERROR_REFUSED_STREAM ;
 int h2o_http2_conn_request_write (TYPE_3__*) ;
 int h2o_http2_encode_rst_stream_frame (int *,int ,int ) ;
 int h2o_http2_stream_close (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void send_refused_stream(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    h2o_http2_encode_rst_stream_frame(&conn->_write.buf, stream->stream_id, -H2O_HTTP2_ERROR_REFUSED_STREAM);
    h2o_http2_conn_request_write(conn);
    h2o_http2_stream_close(conn, stream);
}
