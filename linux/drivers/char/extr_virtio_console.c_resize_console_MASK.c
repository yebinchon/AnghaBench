#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct virtio_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ws; int /*<<< orphan*/  hvc; } ;
struct port {TYPE_2__ cons; TYPE_1__* portdev; } ;
struct TYPE_3__ {struct virtio_device* vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_CONSOLE_F_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 
 scalar_t__ FUNC3 (struct virtio_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct port *port)
{
	struct virtio_device *vdev;

	/* The port could have been hot-unplugged */
	if (!port || !FUNC1(port))
		return;

	vdev = port->portdev->vdev;

	/* Don't test F_SIZE at all if we're rproc: not a valid feature! */
	if (!FUNC2(vdev) &&
	    FUNC3(vdev, VIRTIO_CONSOLE_F_SIZE))
		FUNC0(port->cons.hvc, port->cons.ws);
}