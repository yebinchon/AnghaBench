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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,int) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(unsigned long long nsecs)
{
	u64 end;

	nsecs <<= 9;
	FUNC2(nsecs, 125);
	end = FUNC3() + nsecs;
	if (nsecs & ~0xfffUL)
		FUNC0(nsecs >> 12);
	while (FUNC3() < end)
		FUNC1();
}