
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int buf; } ;
struct st_h2o_http2client_conn_t {scalar_t__ state; TYPE_1__ output; } ;


 scalar_t__ H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING ;
 int assert (int) ;
 int h2o_http2_encode_rst_stream_frame (int *,int ,int) ;
 int request_write (struct st_h2o_http2client_conn_t*) ;

__attribute__((used)) static void stream_send_error(struct st_h2o_http2client_conn_t *conn, uint32_t stream_id, int errnum)
{
    assert(stream_id != 0);
    assert(conn->state != H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING);

    h2o_http2_encode_rst_stream_frame(&conn->output.buf, stream_id, -errnum);
    request_write(conn);
}
