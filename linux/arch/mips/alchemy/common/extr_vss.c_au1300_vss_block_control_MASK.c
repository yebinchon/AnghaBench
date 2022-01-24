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
 scalar_t__ ALCHEMY_CPU_AU1300 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  au1300_vss_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(int block, int enable)
{
	unsigned long flags;

	if (FUNC2() != ALCHEMY_CPU_AU1300)
		return;

	/* only one block at a time */
	FUNC3(&au1300_vss_lock, flags);
	if (enable)
		FUNC1(block);
	else
		FUNC0(block);
	FUNC4(&au1300_vss_lock, flags);
}