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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SYSC_REG_RSTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(u32 reset_bits)
{
	u32 t;

	t = FUNC0(SYSC_REG_RSTCTRL);
	t |= reset_bits;
	FUNC1(t, SYSC_REG_RSTCTRL);
	FUNC2(10, 20);

	t &= ~reset_bits;
	FUNC1(t, SYSC_REG_RSTCTRL);
	FUNC2(10, 20);
}