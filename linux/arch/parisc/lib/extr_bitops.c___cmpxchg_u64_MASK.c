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
typedef  int /*<<< orphan*/  volatile u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  volatile*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  volatile*,unsigned long) ; 

u64 FUNC2(volatile u64 *ptr, u64 old, u64 new)
{
	unsigned long flags;
	u64 prev;

	FUNC0(ptr, flags);
	if ((prev = *ptr) == old)
		*ptr = new;
	FUNC1(ptr, flags);
	return prev;
}