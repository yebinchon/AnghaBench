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
typedef  enum iomux_gp_func { ____Placeholder_iomux_gp_func } iomux_gp_func ;

/* Variables and functions */
 int /*<<< orphan*/  IOMUXGPR ; 
 int /*<<< orphan*/  gpio_mux_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(enum iomux_gp_func gp, bool en)
{
	u32 l;

	FUNC2(&gpio_mux_lock);
	l = FUNC0(IOMUXGPR);
	if (en)
		l |= gp;
	else
		l &= ~gp;

	FUNC1(l, IOMUXGPR);
	FUNC3(&gpio_mux_lock);
}