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
 unsigned long CR_A ; 
 unsigned long cr_alignment ; 
 unsigned long cr_no_alignment ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(unsigned long mask, unsigned long set)
{
	unsigned long flags;

	mask &= ~CR_A;

	set &= mask;

	FUNC2(flags);

	cr_no_alignment = (cr_no_alignment & ~mask) | set;
	cr_alignment = (cr_alignment & ~mask) | set;

	FUNC3((FUNC0() & ~mask) | set);

	FUNC1(flags);
}