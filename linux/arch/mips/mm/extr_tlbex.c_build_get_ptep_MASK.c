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
#define  CPU_NEVADA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,unsigned int) ; 
 int FUNC4 () ; 

void FUNC5(u32 **p, unsigned int tmp, unsigned int ptr)
{
	/*
	 * Bug workaround for the Nevada. It seems as if under certain
	 * circumstances the move from cp0_context might produce a
	 * bogus result when the mfc0 instruction and its consumer are
	 * in a different cacheline or a load instruction, probably any
	 * memory reference, is between them.
	 */
	switch (FUNC4()) {
	case CPU_NEVADA:
		FUNC2(p, ptr, 0, ptr);
		FUNC0(p, tmp); /* get context reg */
		break;

	default:
		FUNC0(p, tmp); /* get context reg */
		FUNC2(p, ptr, 0, ptr);
		break;
	}

	FUNC3(p, tmp);
	FUNC1(p, ptr, ptr, tmp); /* add in offset */
}