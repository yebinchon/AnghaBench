#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct st_quicly_handle_payload_state_t {int /*<<< orphan*/  end; int /*<<< orphan*/  src; } ;
struct TYPE_13__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_4__ quicly_data_blocked_frame_t ;
struct TYPE_10__ {scalar_t__ send_ack_at; } ;
struct TYPE_11__ {int /*<<< orphan*/  sender; } ;
struct TYPE_12__ {TYPE_2__ max_data; } ;
struct TYPE_14__ {TYPE_1__ egress; TYPE_3__ ingress; } ;
typedef  TYPE_5__ quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_BLOCKED_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC5(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_data_blocked_frame_t frame;
    int ret;

    if ((ret = FUNC2(&state->src, state->end, &frame)) != 0)
        return ret;

    FUNC0(DATA_BLOCKED_RECEIVE, conn, FUNC1(), frame.offset);

    FUNC3(&conn->ingress.max_data.sender);
    if (FUNC4(conn))
        conn->egress.send_ack_at = 0;

    return 0;
}