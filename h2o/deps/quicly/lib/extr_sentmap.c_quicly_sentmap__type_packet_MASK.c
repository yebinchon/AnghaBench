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
struct st_quicly_conn_t {int dummy; } ;
typedef  int /*<<< orphan*/  quicly_sentmap_event_t ;
typedef  int /*<<< orphan*/  quicly_sent_t ;
typedef  int /*<<< orphan*/  quicly_sent_packet_t ;

/* Variables and functions */
 int QUICLY_TRANSPORT_ERROR_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1(struct st_quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                                quicly_sentmap_event_t event)
{
    FUNC0(!"quicly_sentmap__type_packet cannot be called");
    return QUICLY_TRANSPORT_ERROR_INTERNAL;
}