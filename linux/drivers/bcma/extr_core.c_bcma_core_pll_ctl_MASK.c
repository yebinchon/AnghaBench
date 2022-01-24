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
typedef  int u16 ;
struct bcma_device {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CLKCTLST ; 
 int BCMA_CLKCTLST_EXTRESREQ ; 
 int BCMA_CLKCTLST_EXTRESST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct bcma_device *core, u32 req, u32 status, bool on)
{
	u16 i;

	FUNC0(req & ~BCMA_CLKCTLST_EXTRESREQ);
	FUNC0(status & ~BCMA_CLKCTLST_EXTRESST);

	if (on) {
		FUNC4(core, BCMA_CLKCTLST, req);
		for (i = 0; i < 10000; i++) {
			if ((FUNC3(core, BCMA_CLKCTLST) & status) ==
			    status) {
				i = 0;
				break;
			}
			FUNC5(10);
		}
		if (i)
			FUNC1(core->bus, "PLL enable timeout\n");
	} else {
		/*
		 * Mask the PLL but don't wait for it to be disabled. PLL may be
		 * shared between cores and will be still up if there is another
		 * core using it.
		 */
		FUNC2(core, BCMA_CLKCTLST, ~req);
		FUNC3(core, BCMA_CLKCTLST);
	}
}