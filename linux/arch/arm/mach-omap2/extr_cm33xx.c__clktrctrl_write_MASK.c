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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int AM33XX_CLKTRCTRL_MASK ; 
 int AM33XX_CLKTRCTRL_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u8 c, u16 inst, u16 cdoffs)
{
	u32 v;

	v = FUNC0(inst, cdoffs);
	v &= ~AM33XX_CLKTRCTRL_MASK;
	v |= c << AM33XX_CLKTRCTRL_SHIFT;
	FUNC1(v, inst, cdoffs);
}