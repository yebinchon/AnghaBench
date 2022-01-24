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
 int /*<<< orphan*/  FUNC0 (unsigned int volatile*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int volatile*,unsigned long) ; 

unsigned long FUNC2(volatile unsigned int *ptr, unsigned int old, unsigned int new)
{
	unsigned long flags;
	unsigned int prev;

	FUNC0(ptr, flags);
	if ((prev = *ptr) == old)
		*ptr = new;
	FUNC1(ptr, flags);
	return (unsigned long)prev;
}