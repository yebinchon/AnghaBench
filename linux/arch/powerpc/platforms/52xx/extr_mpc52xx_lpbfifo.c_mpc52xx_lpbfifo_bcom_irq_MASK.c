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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mpc52xx_lpbfifo_request {int flags; int buffer_not_done_cnt; int size; int pos; int /*<<< orphan*/  (* callback ) (struct mpc52xx_lpbfifo_request*) ;int /*<<< orphan*/  irq_ticks; scalar_t__ data; int /*<<< orphan*/  last_byte; int /*<<< orphan*/  irq_count; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct mpc52xx_lpbfifo_request* req; int /*<<< orphan*/  bcom_cur_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MPC52XX_LPBFIFO_FLAG_NO_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 TYPE_1__ lpbfifo ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mpc52xx_lpbfifo_request*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct mpc52xx_lpbfifo_request *req;
	unsigned long flags;
	u32 status;
	u32 ts;

	FUNC4(&lpbfifo.lock, flags);
	ts = FUNC2();

	req = lpbfifo.req;
	if (!req || (req->flags & MPC52XX_LPBFIFO_FLAG_NO_DMA)) {
		FUNC5(&lpbfifo.lock, flags);
		return IRQ_HANDLED;
	}

	if (irq != 0) /* don't increment on polled case */
		req->irq_count++;

	if (!FUNC0(lpbfifo.bcom_cur_task)) {
		FUNC5(&lpbfifo.lock, flags);

		req->buffer_not_done_cnt++;
		if ((req->buffer_not_done_cnt % 1000) == 0)
			FUNC3("transfer stalled\n");

		return IRQ_HANDLED;
	}

	FUNC1(lpbfifo.bcom_cur_task, &status, NULL);

	req->last_byte = ((u8 *)req->data)[req->size - 1];

	req->pos = status & 0x00ffffff;

	/* Mark the FIFO as idle */
	lpbfifo.req = NULL;

	/* Release the lock before calling out to the callback. */
	req->irq_ticks += FUNC2() - ts;
	FUNC5(&lpbfifo.lock, flags);

	if (req->callback)
		req->callback(req);

	return IRQ_HANDLED;
}