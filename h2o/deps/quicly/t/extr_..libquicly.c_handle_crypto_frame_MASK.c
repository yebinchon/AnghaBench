#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st_quicly_handle_payload_state_t {scalar_t__ epoch; int /*<<< orphan*/  end; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  quicly_stream_t ;
typedef  int /*<<< orphan*/  quicly_stream_id_t ;
typedef  int /*<<< orphan*/  quicly_stream_frame_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_stream_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = FUNC2(&state->src, state->end, &frame)) != 0)
        return ret;
    stream = FUNC3(conn, -(quicly_stream_id_t)(1 + state->epoch));
    FUNC1(stream != NULL);
    return FUNC0(stream, &frame);
}