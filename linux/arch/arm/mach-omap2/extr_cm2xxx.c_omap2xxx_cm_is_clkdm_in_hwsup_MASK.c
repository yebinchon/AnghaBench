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
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int OMAP24XX_CLKSTCTRL_ENABLE_AUTO ; 
 int /*<<< orphan*/  OMAP2_CM_CLKSTCTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(s16 module, u32 mask)
{
	u32 v;

	v = FUNC1(module, OMAP2_CM_CLKSTCTRL);
	v &= mask;
	v >>= FUNC0(mask);

	return (v == OMAP24XX_CLKSTCTRL_ENABLE_AUTO) ? 1 : 0;
}