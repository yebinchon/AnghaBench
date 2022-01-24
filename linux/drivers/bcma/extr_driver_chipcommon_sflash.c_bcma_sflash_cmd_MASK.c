#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_FLASHCTL ; 
 int BCMA_CC_FLASHCTL_BUSY ; 
 int BCMA_CC_FLASHCTL_START ; 
 int FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct bcma_drv_cc *cc, u32 opcode)
{
	int i;
	FUNC1(cc, BCMA_CC_FLASHCTL,
			BCMA_CC_FLASHCTL_START | opcode);
	for (i = 0; i < 1000; i++) {
		if (!(FUNC0(cc, BCMA_CC_FLASHCTL) &
		      BCMA_CC_FLASHCTL_BUSY))
			return;
		FUNC3();
	}
	FUNC2(cc->core->bus, "SFLASH control command failed (timeout)!\n");
}