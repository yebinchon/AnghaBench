#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sender_state; int /*<<< orphan*/  error_code; } ;
struct TYPE_8__ {TYPE_1__ rst; } ;
struct TYPE_9__ {TYPE_2__ _send_aux; int /*<<< orphan*/  sendstate; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  conn; } ;
typedef  TYPE_3__ quicly_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ QUICLY_SENDER_STATE_NONE ; 
 scalar_t__ QUICLY_SENDER_STATE_SEND ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

void FUNC9(quicly_stream_t *stream, int err)
{
    FUNC2(FUNC6(FUNC3(stream->conn), stream->stream_id));
    FUNC2(FUNC1(err));
    FUNC2(stream->_send_aux.rst.sender_state == QUICLY_SENDER_STATE_NONE);
    FUNC2(!FUNC5(&stream->sendstate));

    /* dispose sendbuf state */
    FUNC4(&stream->sendstate);

    /* setup RST_STREAM */
    stream->_send_aux.rst.sender_state = QUICLY_SENDER_STATE_SEND;
    stream->_send_aux.rst.error_code = FUNC0(err);

    /* schedule for delivery */
    FUNC8(stream);
    FUNC7(stream);
}