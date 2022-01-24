#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  sender_state; } ;
struct TYPE_14__ {TYPE_3__ rst; } ;
struct TYPE_15__ {TYPE_4__ _send_aux; } ;
typedef  TYPE_5__ quicly_stream_t ;
typedef  scalar_t__ quicly_sentmap_event_t ;
struct TYPE_11__ {int /*<<< orphan*/  stream_id; } ;
struct TYPE_12__ {TYPE_1__ stream_state_sender; } ;
struct TYPE_16__ {TYPE_2__ data; } ;
typedef  TYPE_6__ quicly_sent_t ;
typedef  int /*<<< orphan*/  quicly_sent_packet_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 scalar_t__ QUICLY_SENTMAP_EVENT_ACKED ; 
 scalar_t__ QUICLY_SENTMAP_EVENT_EXPIRED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC4(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                             quicly_sentmap_event_t event)
{
    if (event != QUICLY_SENTMAP_EVENT_EXPIRED) {
        quicly_stream_t *stream;
        if ((stream = FUNC2(conn, sent->data.stream_state_sender.stream_id)) != NULL) {
            FUNC1(&stream->_send_aux.rst.sender_state, event == QUICLY_SENTMAP_EVENT_ACKED);
            if (FUNC3(stream))
                FUNC0(stream, 0);
        }
    }

    return 0;
}