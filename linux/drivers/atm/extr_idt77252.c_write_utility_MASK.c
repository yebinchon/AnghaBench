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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct idt77252_dev {int /*<<< orphan*/  cmd_lock; } ;

/* Variables and functions */
 scalar_t__ SAR_CMD_WRITE_UTILITY ; 
 int /*<<< orphan*/  SAR_REG_CMD ; 
 int /*<<< orphan*/  SAR_REG_DR0 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *dev, unsigned long ubus_addr, u8 value)
{
	struct idt77252_dev *card = dev;
	unsigned long flags;

	if (!card) {
		FUNC0("Error: No such device.\n");
		return;
	}

	FUNC1(&card->cmd_lock, flags);
	FUNC4((u32) value, SAR_REG_DR0);
	FUNC4(SAR_CMD_WRITE_UTILITY + ubus_addr, SAR_REG_CMD);
	FUNC3(card);
	FUNC2(&card->cmd_lock, flags);
}