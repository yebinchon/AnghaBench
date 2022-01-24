#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtqueue {TYPE_3__* vdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  hvc; } ;
struct port {TYPE_2__ cons; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  inbuf_lock; TYPE_1__* portdev; int /*<<< orphan*/  guest_connected; int /*<<< orphan*/  inbuf; } ;
struct TYPE_6__ {int /*<<< orphan*/  priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 struct port* FUNC1 (int /*<<< orphan*/ ,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct virtqueue *vq)
{
	struct port *port;
	unsigned long flags;

	port = FUNC1(vq->vdev->priv, vq);
	if (!port) {
		FUNC2(vq, false);
		return;
	}

	FUNC9(&port->inbuf_lock, flags);
	port->inbuf = FUNC3(port);

	/*
	 * Normally the port should not accept data when the port is
	 * closed. For generic serial ports, the host won't (shouldn't)
	 * send data till the guest is connected. But this condition
	 * can be reached when a console port is not yet connected (no
	 * tty is spawned) and the other side sends out data over the
	 * vring, or when a remote devices start sending data before
	 * the ports are opened.
	 *
	 * A generic serial port will discard data if not connected,
	 * while console ports and rproc-serial ports accepts data at
	 * any time. rproc-serial is initiated with guest_connected to
	 * false because port_fops_open expects this. Console ports are
	 * hooked up with an HVC console and is initialized with
	 * guest_connected to true.
	 */

	if (!port->guest_connected && !FUNC7(port->portdev->vdev))
		FUNC0(port);

	/* Send a SIGIO indicating new data in case the process asked for it */
	FUNC8(port);

	FUNC10(&port->inbuf_lock, flags);

	FUNC11(&port->waitqueue);

	if (FUNC6(port) && FUNC5(port->cons.hvc))
		FUNC4();
}