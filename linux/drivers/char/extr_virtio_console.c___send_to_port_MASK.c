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
struct virtqueue {scalar_t__ num_free; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {size_t bytes_sent; } ;
struct port {int outvq_full; TYPE_1__ stats; int /*<<< orphan*/  outvq_lock; struct virtqueue* out_vq; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct virtqueue*,struct scatterlist*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 

__attribute__((used)) static ssize_t FUNC8(struct port *port, struct scatterlist *sg,
			      int nents, size_t in_count,
			      void *data, bool nonblock)
{
	struct virtqueue *out_vq;
	int err;
	unsigned long flags;
	unsigned int len;

	out_vq = port->out_vq;

	FUNC2(&port->outvq_lock, flags);

	FUNC1(port);

	err = FUNC4(out_vq, sg, nents, data, GFP_ATOMIC);

	/* Tell Host to go! */
	FUNC7(out_vq);

	if (err) {
		in_count = 0;
		goto done;
	}

	if (out_vq->num_free == 0)
		port->outvq_full = true;

	if (nonblock)
		goto done;

	/*
	 * Wait till the host acknowledges it pushed out the data we
	 * sent.  This is done for data from the hvc_console; the tty
	 * operations are performed with spinlocks held so we can't
	 * sleep here.  An alternative would be to copy the data to a
	 * buffer and relax the spinning requirement.  The downside is
	 * we need to kmalloc a GFP_ATOMIC buffer each time the
	 * console driver writes something out.
	 */
	while (!FUNC5(out_vq, &len)
		&& !FUNC6(out_vq))
		FUNC0();
done:
	FUNC3(&port->outvq_lock, flags);

	port->stats.bytes_sent += in_count;
	/*
	 * We're expected to return the amount of data we wrote -- all
	 * of it
	 */
	return in_count;
}