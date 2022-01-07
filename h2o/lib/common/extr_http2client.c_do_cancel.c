
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http2client_stream_t {int stream_id; int conn; } ;
typedef int h2o_httpclient_t ;


 int H2O_HTTP2_ERROR_CANCEL ;
 int close_stream (struct st_h2o_http2client_stream_t*) ;
 int stream_send_error (int ,int ,int ) ;

__attribute__((used)) static void do_cancel(h2o_httpclient_t *_client)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;
    stream_send_error(stream->conn, stream->stream_id, H2O_HTTP2_ERROR_CANCEL);
    close_stream(stream);
}
