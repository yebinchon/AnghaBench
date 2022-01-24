#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ send_ack_at; int /*<<< orphan*/  packet_number; int /*<<< orphan*/  sentmap; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_10__ {TYPE_2__ egress; TYPE_1__ super; } ;
typedef  TYPE_3__ quicly_conn_t ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  QUICLY_EPOCH_INITIAL ; 
 scalar_t__ QUICLY_STATE_CLOSING ; 
 scalar_t__ QUICLY_STATE_DRAINING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,unsigned int) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  on_end_closing ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(quicly_conn_t *conn, int host_is_initiating, int wait_draining)
{
    int ret;

    FUNC0(conn->super.state < QUICLY_STATE_CLOSING);

    /* release all inflight info, register a close timeout */
    if ((ret = FUNC1(conn, ~0u)) != 0)
        return ret;
    if ((ret = FUNC5(&conn->egress.sentmap, conn->egress.packet_number, now, QUICLY_EPOCH_INITIAL)) != 0)
        return ret;
    if (FUNC3(&conn->egress.sentmap, on_end_closing) == NULL)
        return PTLS_ERROR_NO_MEMORY;
    FUNC4(&conn->egress.sentmap, 0);
    ++conn->egress.packet_number;

    if (host_is_initiating) {
        conn->super.state = QUICLY_STATE_CLOSING;
        conn->egress.send_ack_at = 0;
    } else {
        conn->super.state = QUICLY_STATE_DRAINING;
        conn->egress.send_ack_at = wait_draining ? now + FUNC2(conn) : 0;
    }

    FUNC6(conn);

    return 0;
}