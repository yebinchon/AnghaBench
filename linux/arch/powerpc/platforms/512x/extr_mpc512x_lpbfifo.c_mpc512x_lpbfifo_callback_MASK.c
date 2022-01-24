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
struct mpc512x_lpbfifo_request {scalar_t__ dir; int /*<<< orphan*/  (* callback ) (struct mpc512x_lpbfifo_request*) ;int /*<<< orphan*/  size; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {int wait_lpbfifo_callback; int /*<<< orphan*/  lock; struct mpc512x_lpbfifo_request* req; int /*<<< orphan*/  wait_lpbfifo_irq; int /*<<< orphan*/  ram_bus_addr; TYPE_2__* chan; int /*<<< orphan*/  regs; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 scalar_t__ MPC512X_LPBFIFO_REQ_DIR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ lpbfifo ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mpc512x_lpbfifo_request*) ; 

__attribute__((used)) static void FUNC5(void *param)
{
	unsigned long flags;
	struct mpc512x_lpbfifo_request *req = NULL;
	enum dma_data_direction dir;

	FUNC2(&lpbfifo.lock, flags);

	if (!lpbfifo.regs) {
		FUNC3(&lpbfifo.lock, flags);
		return;
	}

	req = lpbfifo.req;
	if (!req) {
		FUNC1("bogus LPBFIFO callback\n");
		FUNC3(&lpbfifo.lock, flags);
		return;
	}

	/* Release the mapping */
	if (req->dir == MPC512X_LPBFIFO_REQ_DIR_WRITE)
		dir = DMA_TO_DEVICE;
	else
		dir = DMA_FROM_DEVICE;
	FUNC0(lpbfifo.chan->device->dev,
			lpbfifo.ram_bus_addr, req->size, dir);

	lpbfifo.wait_lpbfifo_callback = false;

	if (!lpbfifo.wait_lpbfifo_irq) {
		/* Transfer is finished, set the FIFO as idle */
		lpbfifo.req = NULL;

		FUNC3(&lpbfifo.lock, flags);

		if (req->callback)
			req->callback(req);
	} else {
		FUNC3(&lpbfifo.lock, flags);
	}
}