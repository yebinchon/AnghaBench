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
typedef  int u32 ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int /*<<< orphan*/  func; int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int C_COM_DRV_OWN ; 
 int C_FW_OWN_REQ_CLR ; 
 int C_INT_CLR_CTRL ; 
 int C_INT_EN_CLR ; 
 int C_INT_EN_SET ; 
 int /*<<< orphan*/  MTK_REG_CHCR ; 
 int /*<<< orphan*/  MTK_REG_CHIER ; 
 int /*<<< orphan*/  MTK_REG_CHLPCR ; 
 int /*<<< orphan*/  MTK_REG_CSDIOCSR ; 
 int /*<<< orphan*/  MTK_SDIO_BLOCK_SIZE ; 
 int RX_DONE_INT ; 
 int SDIO_INT_CTL ; 
 int SDIO_RE_INIT_EN ; 
 int TX_EMPTY ; 
 int TX_FIFO_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  btmtksdio_drv_own_query ; 
 int /*<<< orphan*/  btmtksdio_interrupt ; 
 struct btmtksdio_dev* FUNC1 (struct hci_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct btmtksdio_dev*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC11(struct hci_dev *hdev)
{
	struct btmtksdio_dev *bdev = FUNC1(hdev);
	int err;
	u32 status;

	FUNC3(bdev->func);

	err = FUNC6(bdev->func);
	if (err < 0)
		goto err_release_host;

	/* Get ownership from the device */
	FUNC10(bdev->func, C_FW_OWN_REQ_CLR, MTK_REG_CHLPCR, &err);
	if (err < 0)
		goto err_disable_func;

	err = FUNC2(btmtksdio_drv_own_query, bdev, status,
				 status & C_COM_DRV_OWN, 2000, 1000000);
	if (err < 0) {
		FUNC0(bdev->hdev, "Cannot get ownership from device");
		goto err_disable_func;
	}

	/* Disable interrupt & mask out all interrupt sources */
	FUNC10(bdev->func, C_INT_EN_CLR, MTK_REG_CHLPCR, &err);
	if (err < 0)
		goto err_disable_func;

	FUNC10(bdev->func, 0, MTK_REG_CHIER, &err);
	if (err < 0)
		goto err_disable_func;

	err = FUNC4(bdev->func, btmtksdio_interrupt);
	if (err < 0)
		goto err_disable_func;

	err = FUNC9(bdev->func, MTK_SDIO_BLOCK_SIZE);
	if (err < 0)
		goto err_release_irq;

	/* SDIO CMD 5 allows the SDIO device back to idle state an
	 * synchronous interrupt is supported in SDIO 4-bit mode
	 */
	FUNC10(bdev->func, SDIO_INT_CTL | SDIO_RE_INIT_EN,
		    MTK_REG_CSDIOCSR, &err);
	if (err < 0)
		goto err_release_irq;

	/* Setup write-1-clear for CHISR register */
	FUNC10(bdev->func, C_INT_CLR_CTRL, MTK_REG_CHCR, &err);
	if (err < 0)
		goto err_release_irq;

	/* Setup interrupt sources */
	FUNC10(bdev->func, RX_DONE_INT | TX_EMPTY | TX_FIFO_OVERFLOW,
		    MTK_REG_CHIER, &err);
	if (err < 0)
		goto err_release_irq;

	/* Enable interrupt */
	FUNC10(bdev->func, C_INT_EN_SET, MTK_REG_CHLPCR, &err);
	if (err < 0)
		goto err_release_irq;

	FUNC7(bdev->func);

	return 0;

err_release_irq:
	FUNC8(bdev->func);

err_disable_func:
	FUNC5(bdev->func);

err_release_host:
	FUNC7(bdev->func);

	return err;
}