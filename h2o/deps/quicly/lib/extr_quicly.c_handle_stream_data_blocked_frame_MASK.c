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
struct st_quicly_handle_payload_state_t {int /*<<< orphan*/  end; int /*<<< orphan*/  src; } ;
struct TYPE_8__ {int /*<<< orphan*/  max_stream_data_sender; } ;
struct TYPE_9__ {TYPE_1__ _send_aux; } ;
typedef  TYPE_2__ quicly_stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  stream_id; int /*<<< orphan*/  offset; } ;
typedef  TYPE_3__ quicly_stream_data_blocked_frame_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int QUICLY_TRANSPORT_ERROR_FRAME_ENCODING ; 
 int /*<<< orphan*/  STREAM_DATA_BLOCKED_RECEIVE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_stream_data_blocked_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = FUNC2(&state->src, state->end, &frame)) != 0)
        return ret;

    FUNC0(STREAM_DATA_BLOCKED_RECEIVE, conn, FUNC1(), frame.stream_id, frame.offset);

    if (!FUNC6(FUNC4(conn), frame.stream_id))
        return QUICLY_TRANSPORT_ERROR_FRAME_ENCODING;

    if ((stream = FUNC3(conn, frame.stream_id)) != NULL) {
        FUNC5(&stream->_send_aux.max_stream_data_sender);
        if (FUNC8(stream))
            FUNC7(stream);
    }

    return 0;
}