#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sender_state; } ;
struct TYPE_6__ {TYPE_1__ rst; } ;
struct TYPE_7__ {TYPE_2__ _send_aux; int /*<<< orphan*/  sendstate; int /*<<< orphan*/  recvstate; } ;
typedef  TYPE_3__ quicly_stream_t ;

/* Variables and functions */
#define  QUICLY_SENDER_STATE_ACKED 129 
#define  QUICLY_SENDER_STATE_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(quicly_stream_t *stream)
{
    if (!FUNC0(&stream->recvstate))
        return 0;
    if (!FUNC1(&stream->sendstate))
        return 0;
    switch (stream->_send_aux.rst.sender_state) {
    case QUICLY_SENDER_STATE_NONE:
    case QUICLY_SENDER_STATE_ACKED:
        break;
    default:
        return 0;
    }
    return 1;
}