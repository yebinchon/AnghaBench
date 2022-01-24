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
typedef  int u32 ;
struct mpc512x_lpbfifo_request {scalar_t__ dir; int /*<<< orphan*/  (* callback ) (struct mpc512x_lpbfifo_request*) ;} ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int wait_lpbfifo_irq; int /*<<< orphan*/  lock; struct mpc512x_lpbfifo_request* req; scalar_t__ wait_lpbfifo_callback; TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MPC512X_LPBFIFO_REQ_DIR_READ ; 
 int MPC512X_SCLPC_FIFO_RESET ; 
 int MPC512X_SCLPC_RESET ; 
 int MPC512X_SCLPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__ lpbfifo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc512x_lpbfifo_request*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *param)
{
	struct device *dev = (struct device *)param;
	struct mpc512x_lpbfifo_request *req = NULL;
	unsigned long flags;
	u32 status;

	FUNC3(&lpbfifo.lock, flags);

	if (!lpbfifo.regs)
		goto end;

	req = lpbfifo.req;
	if (!req || req->dir == MPC512X_LPBFIFO_REQ_DIR_READ) {
		FUNC0(dev, "bogus LPBFIFO IRQ\n");
		goto end;
	}

	status = FUNC1(&lpbfifo.regs->status);
	if (status != MPC512X_SCLPC_SUCCESS) {
		FUNC0(dev, "DMA transfer from RAM to peripheral failed\n");
		FUNC2(&lpbfifo.regs->enable,
				MPC512X_SCLPC_RESET | MPC512X_SCLPC_FIFO_RESET);
		goto end;
	}
	/* Clear the interrupt flag */
	FUNC2(&lpbfifo.regs->status, MPC512X_SCLPC_SUCCESS);

	lpbfifo.wait_lpbfifo_irq = false;

	if (lpbfifo.wait_lpbfifo_callback)
		goto end;

	/* Transfer is finished, set the FIFO as idle */
	lpbfifo.req = NULL;

	FUNC4(&lpbfifo.lock, flags);

	if (req->callback)
		req->callback(req);

	return IRQ_HANDLED;

 end:
	FUNC4(&lpbfifo.lock, flags);
	return IRQ_HANDLED;
}