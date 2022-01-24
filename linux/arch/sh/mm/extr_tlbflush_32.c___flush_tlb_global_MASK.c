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
 int /*<<< orphan*/  MMUCR ; 
 int MMUCR_TI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(void)
{
	unsigned long flags;

	FUNC3(flags);

	/*
	 * This is the most destructive of the TLB flushing options,
	 * and will tear down all of the UTLB/ITLB mappings, including
	 * wired entries.
	 */
	FUNC1(FUNC0(MMUCR) | MMUCR_TI, MMUCR);

	FUNC2(flags);
}