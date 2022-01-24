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
struct TYPE_8__ {scalar_t__ sender_state; } ;
struct TYPE_9__ {scalar_t__ max_stream_data; TYPE_1__ rst; } ;
struct TYPE_10__ {TYPE_2__ _send_aux; } ;
typedef  TYPE_3__ quicly_stream_t ;
struct TYPE_11__ {scalar_t__ max_stream_data; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_4__ quicly_max_stream_data_frame_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_STREAM_DATA_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ QUICLY_SENDER_STATE_NONE ; 
 int QUICLY_TRANSPORT_ERROR_FRAME_ENCODING ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_max_stream_data_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = FUNC2(&state->src, state->end, &frame)) != 0)
        return ret;

    FUNC0(MAX_STREAM_DATA_RECEIVE, conn, FUNC1(), frame.stream_id, frame.max_stream_data);

    if (!FUNC5(FUNC4(conn), frame.stream_id))
        return QUICLY_TRANSPORT_ERROR_FRAME_ENCODING;

    if ((stream = FUNC3(conn, frame.stream_id)) == NULL)
        return 0;

    if (frame.max_stream_data < stream->_send_aux.max_stream_data)
        return 0;
    stream->_send_aux.max_stream_data = frame.max_stream_data;

    if (stream->_send_aux.rst.sender_state == QUICLY_SENDER_STATE_NONE)
        FUNC6(stream);

    return 0;
}