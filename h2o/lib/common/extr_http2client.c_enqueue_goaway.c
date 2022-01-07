
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int link; } ;
struct TYPE_3__ {int buf; } ;
struct st_h2o_http2client_conn_t {scalar_t__ state; TYPE_2__ super; TYPE_1__ output; } ;
typedef int h2o_iovec_t ;


 scalar_t__ H2O_HTTP2CLIENT_CONN_STATE_HALF_CLOSED ;
 scalar_t__ H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING ;
 int h2o_http2_encode_goaway_frame (int *,int ,int,int ) ;
 scalar_t__ h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;
 int request_write (struct st_h2o_http2client_conn_t*) ;

__attribute__((used)) static void enqueue_goaway(struct st_h2o_http2client_conn_t *conn, int errnum, h2o_iovec_t additional_data)
{
    if (conn->state == H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING)
        return;

    h2o_http2_encode_goaway_frame(&conn->output.buf, 0, errnum, additional_data);
    request_write(conn);
    conn->state = H2O_HTTP2CLIENT_CONN_STATE_HALF_CLOSED;


    if (h2o_linklist_is_linked(&conn->super.link))
        h2o_linklist_unlink(&conn->super.link);
}
