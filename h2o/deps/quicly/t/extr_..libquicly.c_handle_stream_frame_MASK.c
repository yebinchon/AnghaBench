#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_quicly_handle_payload_state_t {int /*<<< orphan*/  end; int /*<<< orphan*/  src; int /*<<< orphan*/  frame_type; } ;
typedef  int /*<<< orphan*/  quicly_stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int /*<<< orphan*/  stream_id; scalar_t__ is_fin; TYPE_1__ data; int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ quicly_stream_frame_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  QUICTRACE_RECV_STREAM ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_stream_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = FUNC4(state->frame_type, &state->src, state->end, &frame)) != 0)
        return ret;
    FUNC0(QUICTRACE_RECV_STREAM, conn, FUNC3(), frame.stream_id, frame.offset, frame.data.len, (int)frame.is_fin);
    if ((ret = FUNC2(conn, frame.stream_id, &stream)) != 0 || stream == NULL)
        return ret;
    return FUNC1(stream, &frame);
}