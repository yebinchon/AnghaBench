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
struct port {int /*<<< orphan*/  host_connected; int /*<<< orphan*/  guest_connected; int /*<<< orphan*/  waitqueue; } ;
struct file {struct port* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *filp, poll_table *wait)
{
	struct port *port;
	__poll_t ret;

	port = filp->private_data;
	FUNC0(filp, &port->waitqueue, wait);

	if (!port->guest_connected) {
		/* Port got unplugged */
		return EPOLLHUP;
	}
	ret = 0;
	if (!FUNC1(port))
		ret |= EPOLLIN | EPOLLRDNORM;
	if (!FUNC2(port))
		ret |= EPOLLOUT;
	if (!port->host_connected)
		ret |= EPOLLHUP;

	return ret;
}