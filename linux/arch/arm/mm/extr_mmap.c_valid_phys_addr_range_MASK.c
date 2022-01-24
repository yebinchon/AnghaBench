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
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 scalar_t__ PHYS_OFFSET ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ high_memory ; 

int FUNC1(phys_addr_t addr, size_t size)
{
	if (addr < PHYS_OFFSET)
		return 0;
	if (addr + size > FUNC0(high_memory - 1) + 1)
		return 0;

	return 1;
}