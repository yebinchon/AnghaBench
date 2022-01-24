#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ sender_state; int /*<<< orphan*/  error_code; } ;
struct TYPE_8__ {TYPE_3__ stop_sending; } ;
struct TYPE_7__ {scalar_t__ eos; } ;
struct TYPE_10__ {TYPE_2__ _send_aux; TYPE_1__ recvstate; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  conn; } ;
typedef  TYPE_4__ quicly_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ QUICLY_SENDER_STATE_NONE ; 
 scalar_t__ QUICLY_SENDER_STATE_SEND ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

void FUNC6(quicly_stream_t *stream, int err)
{
    FUNC2(FUNC4(FUNC3(stream->conn), stream->stream_id));
    FUNC2(FUNC1(err));

    /* send STOP_SENDING if the incoming side of the stream is still open */
    if (stream->recvstate.eos == UINT64_MAX && stream->_send_aux.stop_sending.sender_state == QUICLY_SENDER_STATE_NONE) {
        stream->_send_aux.stop_sending.sender_state = QUICLY_SENDER_STATE_SEND;
        stream->_send_aux.stop_sending.error_code = FUNC0(err);
        FUNC5(stream);
    }
}