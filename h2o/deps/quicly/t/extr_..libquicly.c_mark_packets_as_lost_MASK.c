#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  quicly_sentmap_iter_t ;
struct TYPE_10__ {scalar_t__ packet_number; scalar_t__ bytes_in_flight; } ;
typedef  TYPE_2__ quicly_sent_packet_t ;
struct TYPE_12__ {scalar_t__ bytes_in_flight; } ;
struct TYPE_9__ {scalar_t__ max_lost_pn; TYPE_4__ sentmap; } ;
struct TYPE_11__ {TYPE_1__ egress; } ;
typedef  TYPE_3__ quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  QUICLY_SENTMAP_EVENT_LOST ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(quicly_conn_t *conn, size_t count)
{
    quicly_sentmap_iter_t iter;
    int ret;

    FUNC0(count != 0);

    FUNC1(conn, &iter);

    while (FUNC2(&iter)->packet_number < conn->egress.max_lost_pn)
        FUNC3(&iter);

    do {
        const quicly_sent_packet_t *sent = FUNC2(&iter);
        uint64_t pn;
        if ((pn = sent->packet_number) == UINT64_MAX) {
            FUNC0(conn->egress.sentmap.bytes_in_flight == 0);
            break;
        }
        if (sent->bytes_in_flight != 0)
            --count;
        if ((ret = FUNC4(&conn->egress.sentmap, &iter, QUICLY_SENTMAP_EVENT_LOST, conn)) != 0)
            return ret;
        conn->egress.max_lost_pn = pn + 1;
    } while (count != 0);

    return 0;
}