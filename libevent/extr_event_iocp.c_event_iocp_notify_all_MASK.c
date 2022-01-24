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
struct event_iocp_port {int n_threads; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFICATION_KEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct event_iocp_port *port)
{
	int i, r, ok=1;
	for (i=0; i<port->n_threads; ++i) {
		r = FUNC0(port->port, 0, NOTIFICATION_KEY,
		    NULL);
		if (!r)
			ok = 0;
	}
	return ok ? 0 : -1;
}