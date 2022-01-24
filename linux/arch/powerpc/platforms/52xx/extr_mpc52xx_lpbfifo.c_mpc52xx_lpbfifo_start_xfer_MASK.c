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
struct mpc52xx_lpbfifo_request {scalar_t__ defer_xfer_start; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ regs; struct mpc52xx_lpbfifo_request* req; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ LPBFIFO_REG_PACKET_SIZE ; 
 TYPE_1__ lpbfifo ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct mpc52xx_lpbfifo_request *req)
{
	unsigned long flags;

	if (!lpbfifo.regs)
		return -ENODEV;

	FUNC1(&lpbfifo.lock, flags);

	/*
	 * If the req pointer is already set and a transfer was
	 * started on submit, then this transfer is in progress
	 */
	if (lpbfifo.req && !lpbfifo.req->defer_xfer_start) {
		FUNC2(&lpbfifo.lock, flags);
		return -EBUSY;
	}

	/*
	 * If the req was previously submitted but not
	 * started, start it now
	 */
	if (lpbfifo.req && lpbfifo.req == req &&
	    lpbfifo.req->defer_xfer_start) {
		FUNC0(lpbfifo.regs + LPBFIFO_REG_PACKET_SIZE, 0x01);
	}

	FUNC2(&lpbfifo.lock, flags);
	return 0;
}