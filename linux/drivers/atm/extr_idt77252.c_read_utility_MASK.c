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
typedef  int u8 ;
struct idt77252_dev {int /*<<< orphan*/  cmd_lock; } ;

/* Variables and functions */
 scalar_t__ SAR_CMD_READ_UTILITY ; 
 int /*<<< orphan*/  SAR_REG_CMD ; 
 int /*<<< orphan*/  SAR_REG_DR0 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8
FUNC6(void *dev, unsigned long ubus_addr)
{
	struct idt77252_dev *card = dev;
	unsigned long flags;
	u8 value;

	if (!card) {
		FUNC0("Error: No such device.\n");
		return -1;
	}

	FUNC2(&card->cmd_lock, flags);
	FUNC5(SAR_CMD_READ_UTILITY + ubus_addr, SAR_REG_CMD);
	FUNC4(card);
	value = FUNC1(SAR_REG_DR0);
	FUNC3(&card->cmd_lock, flags);
	return value;
}