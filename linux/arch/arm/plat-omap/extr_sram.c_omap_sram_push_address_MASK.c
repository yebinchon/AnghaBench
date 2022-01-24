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
 int /*<<< orphan*/  FNCPY_ALIGN ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long omap_sram_base ; 
 unsigned long omap_sram_ceil ; 
 unsigned long omap_sram_skip ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void *FUNC3(unsigned long size)
{
	unsigned long available, new_ceil = (unsigned long)omap_sram_ceil;

	available = omap_sram_ceil - (omap_sram_base + omap_sram_skip);

	if (size > available) {
		FUNC2("Not enough space in SRAM\n");
		return NULL;
	}

	new_ceil -= size;
	new_ceil = FUNC1(new_ceil, FNCPY_ALIGN);
	omap_sram_ceil = FUNC0(new_ceil);

	return (void *)omap_sram_ceil;
}