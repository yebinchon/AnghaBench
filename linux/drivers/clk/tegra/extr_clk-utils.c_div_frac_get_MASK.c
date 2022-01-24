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
typedef  int u64 ;

/* Variables and functions */
 int TEGRA_DIVIDER_INT ; 
 int TEGRA_DIVIDER_ROUND_UP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

int FUNC2(unsigned long rate, unsigned parent_rate, u8 width,
		 u8 frac_width, u8 flags)
{
	u64 divider_ux1 = parent_rate;
	int mul;

	if (!rate)
		return 0;

	mul = 1 << frac_width;

	if (!(flags & TEGRA_DIVIDER_INT))
		divider_ux1 *= mul;

	if (flags & TEGRA_DIVIDER_ROUND_UP)
		divider_ux1 += rate - 1;

	FUNC1(divider_ux1, rate);

	if (flags & TEGRA_DIVIDER_INT)
		divider_ux1 *= mul;

	if (divider_ux1 < mul)
		return 0;

	divider_ux1 -= mul;

	if (divider_ux1 > FUNC0(width))
		return FUNC0(width);

	return divider_ux1;
}