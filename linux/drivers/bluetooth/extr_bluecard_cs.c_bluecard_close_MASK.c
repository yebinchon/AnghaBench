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
struct hci_dev {int dummy; } ;
struct bluecard_info {int ctrl_reg; int /*<<< orphan*/  hw_state; struct hci_dev* hdev; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_READY ; 
 int ENODEV ; 
 unsigned int REG_CONTROL ; 
 int REG_CONTROL_BT_RESET ; 
 int REG_CONTROL_CARD_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct bluecard_info *info)
{
	unsigned int iobase = info->p_dev->resource[0]->start;
	struct hci_dev *hdev = info->hdev;

	if (!hdev)
		return -ENODEV;

	FUNC0(hdev);

	FUNC1(CARD_READY, &(info->hw_state));

	/* Reset card */
	info->ctrl_reg = REG_CONTROL_BT_RESET | REG_CONTROL_CARD_RESET;
	FUNC4(info->ctrl_reg, iobase + REG_CONTROL);

	/* Turn FPGA off */
	FUNC4(0x80, iobase + 0x30);

	FUNC3(hdev);
	FUNC2(hdev);

	return 0;
}