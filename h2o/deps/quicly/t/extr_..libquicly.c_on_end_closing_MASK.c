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
typedef  scalar_t__ quicly_sentmap_event_t ;
typedef  int /*<<< orphan*/  quicly_sent_t ;
typedef  int /*<<< orphan*/  quicly_sent_packet_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;

/* Variables and functions */
 scalar_t__ QUICLY_SENTMAP_EVENT_ACKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                          quicly_sentmap_event_t event)
{
    /* we stop accepting frames by the time this ack callback is being registered */
    FUNC0(event != QUICLY_SENTMAP_EVENT_ACKED);
    return 0;
}