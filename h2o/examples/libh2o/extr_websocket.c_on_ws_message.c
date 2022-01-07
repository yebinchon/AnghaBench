
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wslay_event_on_msg_recv_arg {int msg_length; int msg; int opcode; } ;
struct wslay_event_msg {int member_2; int member_1; int member_0; } ;
struct TYPE_4__ {int ws_ctx; } ;
typedef TYPE_1__ h2o_websocket_conn_t ;


 int h2o_websocket_close (TYPE_1__*) ;
 int wslay_event_queue_msg (int ,struct wslay_event_msg*) ;
 int wslay_is_ctrl_frame (int ) ;

__attribute__((used)) static void on_ws_message(h2o_websocket_conn_t *conn, const struct wslay_event_on_msg_recv_arg *arg)
{
    if (arg == ((void*)0)) {
        h2o_websocket_close(conn);
        return;
    }

    if (!wslay_is_ctrl_frame(arg->opcode)) {
        struct wslay_event_msg msgarg = {arg->opcode, arg->msg, arg->msg_length};
        wslay_event_queue_msg(conn->ws_ctx, &msgarg);
    }
}
