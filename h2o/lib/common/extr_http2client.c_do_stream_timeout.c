
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ res; } ;
struct st_h2o_http2client_stream_t {TYPE_1__ state; int * conn; } ;


 scalar_t__ STREAM_STATE_HEAD ;
 int call_callback_with_error (struct st_h2o_http2client_stream_t*,char const*) ;
 int close_stream (struct st_h2o_http2client_stream_t*) ;
 int h2o_httpclient_error_connect_timeout ;
 char* h2o_httpclient_error_first_byte_timeout ;
 char* h2o_httpclient_error_io_timeout ;
 int on_connect_error (struct st_h2o_http2client_stream_t*,int ) ;

__attribute__((used)) static void do_stream_timeout(struct st_h2o_http2client_stream_t *stream)
{
    if (stream->conn == ((void*)0)) {
        on_connect_error(stream, h2o_httpclient_error_connect_timeout);
        return;
    }
    const char *errstr =
        stream->state.res == STREAM_STATE_HEAD ? h2o_httpclient_error_first_byte_timeout : h2o_httpclient_error_io_timeout;
    call_callback_with_error(stream, errstr);
    close_stream(stream);
}
