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
struct ar934x_nfc {int buf_size; int buf_dma; int ecc_ctrl_reg; int ecc_offset_reg; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int AR934X_NFC_CMD_ADDR_SEL_0 ; 
 int AR934X_NFC_CMD_INPUT_SEL_DMA ; 
 int AR934X_NFC_CTRL_INT_EN ; 
 int AR934X_NFC_DMA_CTRL_DMA_BURST_3 ; 
 int AR934X_NFC_DMA_CTRL_DMA_BURST_S ; 
 int AR934X_NFC_DMA_CTRL_DMA_DIR_READ ; 
 int AR934X_NFC_DMA_CTRL_DMA_DIR_WRITE ; 
 int AR934X_NFC_DMA_CTRL_DMA_START ; 
 int /*<<< orphan*/  AR934X_NFC_DMA_RETRIES ; 
 int AR934X_NFC_IRQ_MASK ; 
 int /*<<< orphan*/  AR934X_NFC_REG_ADDR0_0 ; 
 int /*<<< orphan*/  AR934X_NFC_REG_ADDR0_1 ; 
 int /*<<< orphan*/  AR934X_NFC_REG_CTRL ; 
 int /*<<< orphan*/  AR934X_NFC_REG_DATA_SIZE ; 
 int /*<<< orphan*/  AR934X_NFC_REG_DMA_ADDR ; 
 int /*<<< orphan*/  AR934X_NFC_REG_DMA_COUNT ; 
 int /*<<< orphan*/  AR934X_NFC_REG_DMA_CTRL ; 
 int /*<<< orphan*/  AR934X_NFC_REG_ECC_CTRL ; 
 int /*<<< orphan*/  AR934X_NFC_REG_ECC_OFFSET ; 
 int /*<<< orphan*/  AR934X_NFC_REG_INT_MASK ; 
 int /*<<< orphan*/  AR934X_NFC_REG_INT_STATUS ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar934x_nfc*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar934x_nfc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ar934x_nfc*) ; 
 int FUNC5 (struct ar934x_nfc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ar934x_nfc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ar934x_nfc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct ar934x_nfc*,char*,char*,int,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC11(struct ar934x_nfc *nfc, int column, int page_addr,
			 int len, u32 cmd_reg, u32 ctrl_reg, bool write)
{
	u32 addr0, addr1;
	u32 dma_ctrl;
	int dir;
	int err;
	int retries = 0;

	FUNC0(len & 3);

	if (FUNC0(len > nfc->buf_size))
		FUNC9(nfc->parent, "len=%d > buf_size=%d", len, nfc->buf_size);

	if (write) {
		dma_ctrl = AR934X_NFC_DMA_CTRL_DMA_DIR_WRITE;
		dir = DMA_TO_DEVICE;
	} else {
		dma_ctrl = AR934X_NFC_DMA_CTRL_DMA_DIR_READ;
		dir = DMA_FROM_DEVICE;
	}

	FUNC1(nfc, column, page_addr, &addr0, &addr1);

	dma_ctrl |= AR934X_NFC_DMA_CTRL_DMA_START |
		    (AR934X_NFC_DMA_CTRL_DMA_BURST_3 <<
		     AR934X_NFC_DMA_CTRL_DMA_BURST_S);

	cmd_reg |= AR934X_NFC_CMD_INPUT_SEL_DMA | AR934X_NFC_CMD_ADDR_SEL_0;
	ctrl_reg |= AR934X_NFC_CTRL_INT_EN;

	FUNC10(nfc, "%s a0:%08x a1:%08x len:%x cmd:%08x dma:%08x ctrl:%08x\n",
		(write) ? "write" : "read",
		addr0, addr1, len, cmd_reg, dma_ctrl, ctrl_reg);

retry:
	FUNC6(nfc, AR934X_NFC_REG_INT_STATUS, 0);
	FUNC6(nfc, AR934X_NFC_REG_ADDR0_0, addr0);
	FUNC6(nfc, AR934X_NFC_REG_ADDR0_1, addr1);
	FUNC6(nfc, AR934X_NFC_REG_DMA_ADDR, nfc->buf_dma);
	FUNC6(nfc, AR934X_NFC_REG_DMA_COUNT, len);
	FUNC6(nfc, AR934X_NFC_REG_DATA_SIZE, len);
	FUNC6(nfc, AR934X_NFC_REG_CTRL, ctrl_reg);
	FUNC6(nfc, AR934X_NFC_REG_DMA_CTRL, dma_ctrl);
	FUNC6(nfc, AR934X_NFC_REG_ECC_CTRL, nfc->ecc_ctrl_reg);
	FUNC6(nfc, AR934X_NFC_REG_ECC_OFFSET, nfc->ecc_offset_reg);

	if (FUNC4(nfc)) {
		FUNC6(nfc, AR934X_NFC_REG_INT_MASK, AR934X_NFC_IRQ_MASK);
		/* flush write */
		FUNC3(nfc, AR934X_NFC_REG_INT_MASK);
	}

	FUNC7(nfc, cmd_reg);
	err = FUNC5(nfc);
	if (err) {
		FUNC8(nfc->parent, "%s operation stuck at page %d\n",
			(write) ? "write" : "read", page_addr);

		FUNC2(nfc);
		if (retries++ < AR934X_NFC_DMA_RETRIES)
			goto retry;

		FUNC9(nfc->parent, "%s operation failed on page %d\n",
			(write) ? "write" : "read", page_addr);
	}

	return err;
}