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
 unsigned long SZLONG_LOG ; 
 unsigned long SZLONG_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

int FUNC2(unsigned long nr,
				 volatile unsigned long *addr)
{
	unsigned long *a = (unsigned long *)addr;
	unsigned bit = nr & SZLONG_MASK;
	unsigned long mask;
	unsigned long flags;
	int res;

	a += nr >> SZLONG_LOG;
	mask = 1UL << bit;
	FUNC1(flags);
	res = (mask & *a) != 0;
	*a |= mask;
	FUNC0(flags);
	return res;
}