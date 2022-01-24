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

/* Variables and functions */
 int /*<<< orphan*/  MPMU_CGR_PJ ; 
 int /*<<< orphan*/  MPMU_PLL2_CTRL1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int val;

	FUNC1(0xdffefffe, MPMU_CGR_PJ);
	val = FUNC0(MPMU_PLL2_CTRL1);
	val |= (1 << 29);
	FUNC1(val, MPMU_PLL2_CTRL1);

	return ;
}