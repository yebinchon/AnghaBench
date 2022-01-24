#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quicly_sent_t ;
typedef  int /*<<< orphan*/  quicly_sent_acked_cb ;
typedef  int /*<<< orphan*/  quicly_send_context_t ;
struct TYPE_5__ {int /*<<< orphan*/  sentmap; } ;
struct TYPE_6__ {TYPE_1__ egress; } ;
typedef  TYPE_2__ quicly_conn_t ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(quicly_conn_t *conn, quicly_send_context_t *s, size_t min_space, quicly_sent_t **sent,
                                        quicly_sent_acked_cb acked)
{
    int ret;

    if ((ret = FUNC0(conn, s, min_space, 1)) != 0)
        return ret;
    if ((*sent = FUNC1(&conn->egress.sentmap, acked)) == NULL)
        return PTLS_ERROR_NO_MEMORY;

    /* TODO return the remaining window that the sender can use */
    return ret;
}