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
typedef  int /*<<< orphan*/  u16 ;
struct bcma_device {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int FUNC0 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct bcma_device *core, u16 reg, u32 mask,
				 u32 value, int timeout)
{
	unsigned long deadline = jiffies + timeout;
	u32 val;

	do {
		val = FUNC0(core, reg);
		if ((val & mask) == value)
			return true;
		FUNC2();
		FUNC4(10);
	} while (!FUNC3(jiffies, deadline));

	FUNC1(core->bus, "Timeout waiting for register 0x%04X!\n", reg);

	return false;
}