#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct sdio_func {int dummy; } ;
struct btmtksdio_dev {int /*<<< orphan*/  dev; TYPE_2__* hdev; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  func; } ;
struct TYPE_5__ {int /*<<< orphan*/  err_rx; } ;
struct TYPE_6__ {TYPE_1__ stat; } ;

/* Variables and functions */
 int C_INT_EN_CLR ; 
 int C_INT_EN_SET ; 
 int FW_OWN_BACK_INT ; 
 int /*<<< orphan*/  MTK_REG_CHISR ; 
 int /*<<< orphan*/  MTK_REG_CHLPCR ; 
 int RX_DONE_INT ; 
 int RX_PKT_LEN ; 
 int TX_EMPTY ; 
 int TX_FIFO_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC3 (struct btmtksdio_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct btmtksdio_dev* FUNC9 (struct sdio_func*) ; 
 int FUNC10 (struct sdio_func*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sdio_func*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct sdio_func *func)
{
	struct btmtksdio_dev *bdev = FUNC9(func);
	u32 int_status;
	u16 rx_size;

	/* It is required that the host gets ownership from the device before
	 * accessing any register, however, if SDIO host is not being released,
	 * a potential deadlock probably happens in a circular wait between SDIO
	 * IRQ work and PM runtime work. So, we have to explicitly release SDIO
	 * host here and claim again after the PM runtime work is all done.
	 */
	FUNC11(bdev->func);

	FUNC4(bdev->dev);

	FUNC8(bdev->func);

	/* Disable interrupt */
	FUNC12(func, C_INT_EN_CLR, MTK_REG_CHLPCR, 0);

	int_status = FUNC10(func, MTK_REG_CHISR, NULL);

	/* Ack an interrupt as soon as possible before any operation on
	 * hardware.
	 *
	 * Note that we don't ack any status during operations to avoid race
	 * condition between the host and the device such as it's possible to
	 * mistakenly ack RX_DONE for the next packet and then cause interrupts
	 * not be raised again but there is still pending data in the hardware
	 * FIFO.
	 */
	FUNC12(func, int_status, MTK_REG_CHISR, NULL);

	if (FUNC13(!int_status))
		FUNC1(bdev->hdev, "CHISR is 0");

	if (int_status & FW_OWN_BACK_INT)
		FUNC0(bdev->hdev, "Get fw own back");

	if (int_status & TX_EMPTY)
		FUNC7(&bdev->tx_work);
	else if (FUNC13(int_status & TX_FIFO_OVERFLOW))
		FUNC2(bdev->hdev, "Tx fifo overflow");

	if (int_status & RX_DONE_INT) {
		rx_size = (int_status & RX_PKT_LEN) >> 16;

		if (FUNC3(bdev, rx_size) < 0)
			bdev->hdev->stat.err_rx++;
	}

	/* Enable interrupt */
	FUNC12(func, C_INT_EN_SET, MTK_REG_CHLPCR, 0);

	FUNC5(bdev->dev);
	FUNC6(bdev->dev);
}