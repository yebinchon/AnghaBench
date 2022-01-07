
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wslay_event_context_ptr ;
struct wslay_event_on_msg_recv_arg {int dummy; } ;
struct TYPE_3__ {int (* cb ) (TYPE_1__*,struct wslay_event_on_msg_recv_arg const*) ;} ;
typedef TYPE_1__ h2o_websocket_conn_t ;


 int stub1 (TYPE_1__*,struct wslay_event_on_msg_recv_arg const*) ;

__attribute__((used)) static void on_msg_callback(wslay_event_context_ptr ctx, const struct wslay_event_on_msg_recv_arg *arg, void *_conn)
{
    h2o_websocket_conn_t *conn = _conn;
    (*conn->cb)(conn, arg);
}
