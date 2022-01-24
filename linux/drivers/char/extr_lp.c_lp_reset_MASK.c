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
 int /*<<< orphan*/  LP_DELAY ; 
 int LP_PINITP ; 
 int LP_PSELECP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lp_table ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(int minor)
{
	int retval;
	FUNC0(&lp_table[minor]);
	FUNC4(minor, LP_PSELECP);
	FUNC3(LP_DELAY);
	FUNC4(minor, LP_PSELECP | LP_PINITP);
	retval = FUNC2(minor);
	FUNC1(&lp_table[minor]);
	return retval;
}