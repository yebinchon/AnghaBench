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
 unsigned int BAST_CPLD_CTRL1_LRCDAC ; 
 unsigned int BAST_CPLD_CTRL1_LRMASK ; 
 int /*<<< orphan*/  BAST_VA_CTRL1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned int tmp;
	unsigned long flags;

	FUNC3(flags);

	tmp = FUNC0(BAST_VA_CTRL1);
	tmp &= ~BAST_CPLD_CTRL1_LRMASK;
	tmp |= BAST_CPLD_CTRL1_LRCDAC;
	FUNC1(tmp, BAST_VA_CTRL1);

	FUNC2(flags);
}