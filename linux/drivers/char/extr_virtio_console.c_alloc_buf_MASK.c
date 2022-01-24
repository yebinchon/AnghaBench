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
struct TYPE_4__ {TYPE_1__* parent; } ;
struct virtio_device {TYPE_2__ dev; } ;
struct port_buffer {int sgpages; size_t size; scalar_t__ offset; scalar_t__ len; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * dev; int /*<<< orphan*/  dma; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct port_buffer*) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  sg ; 
 size_t FUNC6 (struct port_buffer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct port_buffer *FUNC7(struct virtio_device *vdev, size_t buf_size,
				     int pages)
{
	struct port_buffer *buf;

	FUNC5();

	/*
	 * Allocate buffer and the sg list. The sg list array is allocated
	 * directly after the port_buffer struct.
	 */
	buf = FUNC4(FUNC6(buf, sg, pages), GFP_KERNEL);
	if (!buf)
		goto fail;

	buf->sgpages = pages;
	if (pages > 0) {
		buf->dev = NULL;
		buf->buf = NULL;
		return buf;
	}

	if (FUNC2(vdev)) {
		/*
		 * Allocate DMA memory from ancestor. When a virtio
		 * device is created by remoteproc, the DMA memory is
		 * associated with the grandparent device:
		 * vdev => rproc => platform-dev.
		 */
		if (!vdev->dev.parent || !vdev->dev.parent->parent)
			goto free_buf;
		buf->dev = vdev->dev.parent->parent;

		/* Increase device refcnt to avoid freeing it */
		FUNC1(buf->dev);
		buf->buf = FUNC0(buf->dev, buf_size, &buf->dma,
					      GFP_KERNEL);
	} else {
		buf->dev = NULL;
		buf->buf = FUNC4(buf_size, GFP_KERNEL);
	}

	if (!buf->buf)
		goto free_buf;
	buf->len = 0;
	buf->offset = 0;
	buf->size = buf_size;
	return buf;

free_buf:
	FUNC3(buf);
fail:
	return NULL;
}