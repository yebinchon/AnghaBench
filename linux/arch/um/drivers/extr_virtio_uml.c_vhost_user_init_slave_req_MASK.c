#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtio_uml_device {int req_fd; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_READ ; 
 int /*<<< orphan*/  VHOST_USER_SET_SLAVE_REQ_FD ; 
 int /*<<< orphan*/  VIRTIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct virtio_uml_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_uml_device*) ; 
 int FUNC4 (struct virtio_uml_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vu_req_interrupt ; 

__attribute__((used)) static int FUNC5(struct virtio_uml_device *vu_dev)
{
	int rc, req_fds[2];

	/* Use a pipe for slave req fd, SIGIO is not supported for eventfd */
	rc = FUNC1(req_fds, true, true);
	if (rc < 0)
		return rc;
	vu_dev->req_fd = req_fds[0];

	rc = FUNC3(VIRTIO_IRQ, vu_dev->req_fd, IRQ_READ,
			    vu_req_interrupt, IRQF_SHARED,
			    vu_dev->pdev->name, vu_dev);
	if (rc)
		goto err_close;

	rc = FUNC4(vu_dev, VHOST_USER_SET_SLAVE_REQ_FD,
					   req_fds[1]);
	if (rc)
		goto err_free_irq;

	goto out;

err_free_irq:
	FUNC2(VIRTIO_IRQ, vu_dev);
err_close:
	FUNC0(req_fds[0]);
out:
	/* Close unused write end of request fds */
	FUNC0(req_fds[1]);
	return rc;
}