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
struct event_iocp_port {int shutdown; int n_live_threads; int /*<<< orphan*/  lock; int /*<<< orphan*/  shutdownSemaphore; } ;
typedef  long DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (struct event_iocp_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_iocp_port*) ; 

int
FUNC5(struct event_iocp_port *port, long waitMsec)
{
	DWORD ms = INFINITE;
	int n;

	FUNC0(&port->lock);
	port->shutdown = 1;
	FUNC1(&port->lock);
	FUNC3(port);

	if (waitMsec >= 0)
		ms = waitMsec;

	FUNC2(port->shutdownSemaphore, ms);
	FUNC0(&port->lock);
	n = port->n_live_threads;
	FUNC1(&port->lock);
	if (n == 0) {
		FUNC4(port);
		return 0;
	} else {
		return -1;
	}
}