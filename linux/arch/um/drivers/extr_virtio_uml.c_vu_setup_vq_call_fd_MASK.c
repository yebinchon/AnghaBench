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
struct virtqueue {int /*<<< orphan*/  index; struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int call_fd; int /*<<< orphan*/  name; } ;
struct virtio_uml_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_READ ; 
 int /*<<< orphan*/  VIRTIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct virtqueue*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtqueue*) ; 
 int FUNC4 (struct virtio_uml_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vu_interrupt ; 

__attribute__((used)) static int FUNC5(struct virtio_uml_device *vu_dev,
			       struct virtqueue *vq)
{
	struct virtio_uml_vq_info *info = vq->priv;
	int call_fds[2];
	int rc;

	/* Use a pipe for call fd, since SIGIO is not supported for eventfd */
	rc = FUNC1(call_fds, true, true);
	if (rc < 0)
		return rc;

	info->call_fd = call_fds[0];
	rc = FUNC3(VIRTIO_IRQ, info->call_fd, IRQ_READ,
			    vu_interrupt, IRQF_SHARED, info->name, vq);
	if (rc)
		goto close_both;

	rc = FUNC4(vu_dev, vq->index, call_fds[1]);
	if (rc)
		goto release_irq;

	goto out;

release_irq:
	FUNC2(VIRTIO_IRQ, vq);
close_both:
	FUNC0(call_fds[0]);
out:
	/* Close (unused) write end of call fds */
	FUNC0(call_fds[1]);

	return rc;
}