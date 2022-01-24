#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct st_quicly_handle_payload_state_t {int /*<<< orphan*/  end; int /*<<< orphan*/  src; } ;
struct TYPE_10__ {scalar_t__ max_data; } ;
typedef  TYPE_3__ quicly_max_data_frame_t ;
struct TYPE_8__ {scalar_t__ permitted; } ;
struct TYPE_9__ {TYPE_1__ max_data; } ;
struct TYPE_11__ {TYPE_2__ egress; } ;
typedef  TYPE_4__ quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_DATA_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_max_data_frame_t frame;
    int ret;

    if ((ret = FUNC2(&state->src, state->end, &frame)) != 0)
        return ret;

    FUNC0(MAX_DATA_RECEIVE, conn, FUNC1(), frame.max_data);

    if (frame.max_data < conn->egress.max_data.permitted)
        return 0;
    conn->egress.max_data.permitted = frame.max_data;

    return 0;
}