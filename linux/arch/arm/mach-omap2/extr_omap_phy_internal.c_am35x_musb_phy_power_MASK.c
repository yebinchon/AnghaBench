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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AM35XX_CONTROL_DEVCONF2 ; 
 int CONF2_OTGPWRDN ; 
 int CONF2_PHYCLKGD ; 
 int CONF2_PHYPWRDN ; 
 int CONF2_PHY_PLLON ; 
 int CONF2_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

void FUNC7(u8 on)
{
	unsigned long timeout = jiffies + FUNC1(100);
	u32 devconf2;

	if (on) {
		/*
		 * Start the on-chip PHY and its PLL.
		 */
		devconf2 = FUNC2(AM35XX_CONTROL_DEVCONF2);

		devconf2 &= ~(CONF2_RESET | CONF2_PHYPWRDN | CONF2_OTGPWRDN);
		devconf2 |= CONF2_PHY_PLLON;

		FUNC3(devconf2, AM35XX_CONTROL_DEVCONF2);

		FUNC5("Waiting for PHY clock good...\n");
		while (!(FUNC2(AM35XX_CONTROL_DEVCONF2)
				& CONF2_PHYCLKGD)) {
			FUNC0();

			if (FUNC6(jiffies, timeout)) {
				FUNC4("musb PHY clock good timed out\n");
				break;
			}
		}
	} else {
		/*
		 * Power down the on-chip PHY.
		 */
		devconf2 = FUNC2(AM35XX_CONTROL_DEVCONF2);

		devconf2 &= ~CONF2_PHY_PLLON;
		devconf2 |=  CONF2_PHYPWRDN | CONF2_OTGPWRDN;
		FUNC3(devconf2, AM35XX_CONTROL_DEVCONF2);
	}
}