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
typedef  int /*<<< orphan*/  u8 ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CCCR_CPDIS_BIT ; 
 int /*<<< orphan*/  CCSR ; 
 int /*<<< orphan*/  PXA_LCD_13Mhz ; 
 int /*<<< orphan*/  PXA_LCD_RUN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC1(struct clk_hw *hw)
{
	unsigned int osc_forced;
	unsigned long ccsr = FUNC0(CCSR);

	osc_forced = ccsr & (1 << CCCR_CPDIS_BIT);
	if (osc_forced)
		return PXA_LCD_13Mhz;
	else
		return PXA_LCD_RUN;
}