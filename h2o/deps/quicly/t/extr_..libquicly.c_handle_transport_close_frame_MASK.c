#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_quicly_handle_payload_state_t {int /*<<< orphan*/  end; int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_3__ reason_phrase; int /*<<< orphan*/  frame_type; int /*<<< orphan*/  error_code; } ;
typedef  TYPE_1__ quicly_transport_close_frame_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSPORT_CLOSE_RECEIVE ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_transport_close_frame_t frame;
    int ret;

    if ((ret = FUNC5(&state->src, state->end, &frame)) != 0)
        return ret;

    FUNC1(TRANSPORT_CLOSE_RECEIVE, conn, FUNC4(), frame.error_code, frame.frame_type,
                 FUNC2(frame.reason_phrase.base, frame.reason_phrase.len));
    return FUNC3(conn, FUNC0(frame.error_code), frame.frame_type, frame.reason_phrase);
}