#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct virtqueue {int dummy; } ;
struct virtio_console_control {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {void* value; void* event; int /*<<< orphan*/  id; } ;
struct ports_device {int /*<<< orphan*/  c_ovq_lock; TYPE_1__ cpkt; int /*<<< orphan*/  vdev; struct virtqueue* c_ovq; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ports_device*) ; 
 scalar_t__ FUNC7 (struct virtqueue*,struct scatterlist*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC10 (struct virtqueue*) ; 

__attribute__((used)) static ssize_t FUNC11(struct ports_device *portdev, u32 port_id,
				  unsigned int event, unsigned int value)
{
	struct scatterlist sg[1];
	struct virtqueue *vq;
	unsigned int len;

	if (!FUNC6(portdev))
		return 0;

	vq = portdev->c_ovq;

	FUNC4(&portdev->c_ovq_lock);

	portdev->cpkt.id = FUNC2(portdev->vdev, port_id);
	portdev->cpkt.event = FUNC1(portdev->vdev, event);
	portdev->cpkt.value = FUNC1(portdev->vdev, value);

	FUNC3(sg, &portdev->cpkt, sizeof(struct virtio_console_control));

	if (FUNC7(vq, sg, 1, &portdev->cpkt, GFP_ATOMIC) == 0) {
		FUNC10(vq);
		while (!FUNC8(vq, &len)
			&& !FUNC9(vq))
			FUNC0();
	}

	FUNC5(&portdev->c_ovq_lock);
	return 0;
}