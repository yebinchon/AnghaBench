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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  RB4XX_NAND_GPIO_ALE ; 
 int /*<<< orphan*/  RB4XX_NAND_GPIO_CLE ; 
 int /*<<< orphan*/  RB4XX_NAND_GPIO_NCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, int cmd,
				unsigned int ctrl)
{
	if (ctrl & NAND_CTRL_CHANGE) {
		FUNC0(RB4XX_NAND_GPIO_CLE,
					(ctrl & NAND_CLE) ? 1 : 0);
		FUNC0(RB4XX_NAND_GPIO_ALE,
					(ctrl & NAND_ALE) ? 1 : 0);
		FUNC0(RB4XX_NAND_GPIO_NCE,
					(ctrl & NAND_NCE) ? 0 : 1);
	}

	if (cmd != NAND_CMD_NONE)
		FUNC1(cmd);
}