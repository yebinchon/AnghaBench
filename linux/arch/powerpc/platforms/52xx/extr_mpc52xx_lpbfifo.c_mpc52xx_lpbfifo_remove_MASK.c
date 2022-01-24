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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * regs; int /*<<< orphan*/  irq; int /*<<< orphan*/  bcom_rx_task; int /*<<< orphan*/  bcom_tx_task; } ;

/* Variables and functions */
 int LPBFIFO_REG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ lpbfifo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	if (lpbfifo.dev != &op->dev)
		return 0;

	/* Put FIFO in reset */
	FUNC5(lpbfifo.regs + LPBFIFO_REG_ENABLE, 0x01010000);

	/* Release the bestcomm transmit task */
	FUNC3(FUNC2(lpbfifo.bcom_tx_task), &lpbfifo);
	FUNC1(lpbfifo.bcom_tx_task);
	
	/* Release the bestcomm receive task */
	FUNC3(FUNC2(lpbfifo.bcom_rx_task), &lpbfifo);
	FUNC0(lpbfifo.bcom_rx_task);

	FUNC3(lpbfifo.irq, &lpbfifo);
	FUNC4(lpbfifo.regs);
	lpbfifo.regs = NULL;
	lpbfifo.dev = NULL;

	return 0;
}