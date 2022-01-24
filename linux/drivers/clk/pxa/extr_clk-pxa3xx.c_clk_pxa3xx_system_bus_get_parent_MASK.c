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
 int /*<<< orphan*/  PXA_BUS_60Mhz ; 
 int /*<<< orphan*/  PXA_BUS_HSS ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static u8 FUNC1(struct clk_hw *hw)
{
	if (FUNC0())
		return PXA_BUS_60Mhz;
	else
		return PXA_BUS_HSS;
}