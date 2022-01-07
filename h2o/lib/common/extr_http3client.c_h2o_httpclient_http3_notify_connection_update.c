
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cb; } ;
struct st_h2o_http3client_conn_t {TYPE_1__ timeout; } ;
typedef int h2o_http3_ctx_t ;
typedef int h2o_http3_conn_t ;


 scalar_t__ h2o_timer_is_linked (TYPE_1__*) ;
 int h2o_timer_unlink (TYPE_1__*) ;
 scalar_t__ on_connect_timeout ;

void h2o_httpclient_http3_notify_connection_update(h2o_http3_ctx_t *ctx, h2o_http3_conn_t *_conn)
{
    struct st_h2o_http3client_conn_t *conn = (void *)_conn;

    if (h2o_timer_is_linked(&conn->timeout) && conn->timeout.cb == on_connect_timeout)
        h2o_timer_unlink(&conn->timeout);
}
