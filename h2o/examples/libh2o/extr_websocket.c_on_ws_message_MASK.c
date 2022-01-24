#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wslay_event_on_msg_recv_arg {int /*<<< orphan*/  msg_length; int /*<<< orphan*/  msg; int /*<<< orphan*/  opcode; } ;
struct wslay_event_msg {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  ws_ctx; } ;
typedef  TYPE_1__ h2o_websocket_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wslay_event_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(h2o_websocket_conn_t *conn, const struct wslay_event_on_msg_recv_arg *arg)
{
    if (arg == NULL) {
        FUNC0(conn);
        return;
    }

    if (!FUNC2(arg->opcode)) {
        struct wslay_event_msg msgarg = {arg->opcode, arg->msg, arg->msg_length};
        FUNC1(conn->ws_ctx, &msgarg);
    }
}