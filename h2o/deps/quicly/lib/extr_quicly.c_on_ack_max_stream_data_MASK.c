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
struct TYPE_14__ {int /*<<< orphan*/  max_stream_data_sender; } ;
struct TYPE_15__ {TYPE_4__ _send_aux; } ;
typedef  TYPE_5__ quicly_stream_t ;
typedef  int quicly_sentmap_event_t ;
struct TYPE_11__ {int /*<<< orphan*/  args; } ;
struct TYPE_12__ {int /*<<< orphan*/  stream_id; } ;
struct TYPE_13__ {TYPE_1__ max_stream_data; TYPE_2__ stream; } ;
struct TYPE_16__ {TYPE_3__ data; } ;
typedef  TYPE_6__ quicly_sent_t ;
typedef  int /*<<< orphan*/  quicly_sent_packet_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
#define  QUICLY_SENTMAP_EVENT_ACKED 129 
 int QUICLY_SENTMAP_EVENT_EXPIRED ; 
#define  QUICLY_SENTMAP_EVENT_LOST 128 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC5(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                                  quicly_sentmap_event_t event)
{
    quicly_stream_t *stream;

    if (event == QUICLY_SENTMAP_EVENT_EXPIRED)
        return 0;

    /* TODO cache pointer to stream (using a generation counter?) */
    if ((stream = FUNC0(conn, sent->data.stream.stream_id)) != NULL) {
        switch (event) {
        case QUICLY_SENTMAP_EVENT_ACKED:
            FUNC1(&stream->_send_aux.max_stream_data_sender, &sent->data.max_stream_data.args);
            break;
        case QUICLY_SENTMAP_EVENT_LOST:
            FUNC2(&stream->_send_aux.max_stream_data_sender, &sent->data.max_stream_data.args);
            if (FUNC4(stream))
                FUNC3(stream);
            break;
        default:
            break;
        }
    }

    return 0;
}