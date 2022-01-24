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
struct port {int guest_connected; int /*<<< orphan*/  kref; int /*<<< orphan*/  outvq_lock; int /*<<< orphan*/  inbuf_lock; } ;
struct inode {int dummy; } ;
struct file {struct port* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_CONSOLE_PORT_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  remove_port ; 
 int /*<<< orphan*/  FUNC4 (struct port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct port *port;

	port = filp->private_data;

	/* Notify host of port being closed */
	FUNC4(port, VIRTIO_CONSOLE_PORT_OPEN, 0);

	FUNC5(&port->inbuf_lock);
	port->guest_connected = false;

	FUNC0(port);

	FUNC6(&port->inbuf_lock);

	FUNC5(&port->outvq_lock);
	FUNC2(port);
	FUNC6(&port->outvq_lock);

	FUNC3();
	/*
	 * Locks aren't necessary here as a port can't be opened after
	 * unplug, and if a port isn't unplugged, a kref would already
	 * exist for the port.  Plus, taking ports_lock here would
	 * create a dependency on other locks taken by functions
	 * inside remove_port if we're the last holder of the port,
	 * creating many problems.
	 */
	FUNC1(&port->kref, remove_port);

	return 0;
}