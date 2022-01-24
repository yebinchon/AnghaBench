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
 unsigned long FUNC0 (void*) ; 
 unsigned long** mcpm_entry_vectors ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 

void FUNC2(unsigned cpu, unsigned cluster, void *ptr)
{
	unsigned long val = ptr ? FUNC0(ptr) : 0;
	mcpm_entry_vectors[cluster][cpu] = val;
	FUNC1(&mcpm_entry_vectors[cluster][cpu]);
}