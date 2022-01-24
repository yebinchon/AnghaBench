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
struct mpc52xx_lpbfifo_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct mpc52xx_lpbfifo_request* req; scalar_t__ regs; int /*<<< orphan*/  bcom_tx_task; int /*<<< orphan*/  bcom_rx_task; } ;

/* Variables and functions */
 scalar_t__ LPBFIFO_REG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ lpbfifo ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct mpc52xx_lpbfifo_request *req)
{
	unsigned long flags;

	FUNC3(&lpbfifo.lock, flags);
	if (lpbfifo.req == req) {
		/* Put it into reset and clear the state */
		FUNC0(lpbfifo.bcom_rx_task);
		FUNC1(lpbfifo.bcom_tx_task);
		FUNC2(lpbfifo.regs + LPBFIFO_REG_ENABLE, 0x01010000);
		lpbfifo.req = NULL;
	}
	FUNC4(&lpbfifo.lock, flags);
}