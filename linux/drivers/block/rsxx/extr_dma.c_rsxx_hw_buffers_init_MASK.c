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
struct TYPE_4__ {scalar_t__ idx; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {scalar_t__ idx; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/ * buf; } ;
struct rsxx_dma_ctrl {scalar_t__ regmap; TYPE_2__ cmd; TYPE_1__ status; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CB_ADD_HI ; 
 scalar_t__ CB_ADD_LO ; 
 int /*<<< orphan*/  COMMAND_BUFFER_SIZE8 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HW_CMD_IDX ; 
 scalar_t__ HW_STATUS_CNT ; 
 scalar_t__ RSXX_MAX_OUTSTANDING_CMDS ; 
 scalar_t__ SB_ADD_HI ; 
 scalar_t__ SB_ADD_LO ; 
 int /*<<< orphan*/  STATUS_BUFFER_SIZE8 ; 
 scalar_t__ SW_CMD_IDX ; 
 scalar_t__ SW_STATUS_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct pci_dev *dev, struct rsxx_dma_ctrl *ctrl)
{
	ctrl->status.buf = FUNC1(&dev->dev, STATUS_BUFFER_SIZE8,
				&ctrl->status.dma_addr, GFP_KERNEL);
	ctrl->cmd.buf = FUNC1(&dev->dev, COMMAND_BUFFER_SIZE8,
				&ctrl->cmd.dma_addr, GFP_KERNEL);
	if (ctrl->status.buf == NULL || ctrl->cmd.buf == NULL)
		return -ENOMEM;

	FUNC5(ctrl->status.buf, 0xac, STATUS_BUFFER_SIZE8);
	FUNC3(FUNC4(ctrl->status.dma_addr),
		ctrl->regmap + SB_ADD_LO);
	FUNC3(FUNC6(ctrl->status.dma_addr),
		ctrl->regmap + SB_ADD_HI);

	FUNC5(ctrl->cmd.buf, 0x83, COMMAND_BUFFER_SIZE8);
	FUNC3(FUNC4(ctrl->cmd.dma_addr), ctrl->regmap + CB_ADD_LO);
	FUNC3(FUNC6(ctrl->cmd.dma_addr), ctrl->regmap + CB_ADD_HI);

	ctrl->status.idx = FUNC2(ctrl->regmap + HW_STATUS_CNT);
	if (ctrl->status.idx > RSXX_MAX_OUTSTANDING_CMDS) {
		FUNC0(&dev->dev, "Failed reading status cnt x%x\n",
			ctrl->status.idx);
		return -EINVAL;
	}
	FUNC3(ctrl->status.idx, ctrl->regmap + HW_STATUS_CNT);
	FUNC3(ctrl->status.idx, ctrl->regmap + SW_STATUS_CNT);

	ctrl->cmd.idx = FUNC2(ctrl->regmap + HW_CMD_IDX);
	if (ctrl->cmd.idx > RSXX_MAX_OUTSTANDING_CMDS) {
		FUNC0(&dev->dev, "Failed reading cmd cnt x%x\n",
			ctrl->status.idx);
		return -EINVAL;
	}
	FUNC3(ctrl->cmd.idx, ctrl->regmap + HW_CMD_IDX);
	FUNC3(ctrl->cmd.idx, ctrl->regmap + SW_CMD_IDX);

	return 0;
}