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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ INVALID_ACPI_IRQ ; 
 scalar_t__* isa_irq_to_gsi ; 
 unsigned int FUNC0 () ; 

int FUNC1(unsigned isa_irq, u32 *gsi)
{
	if (isa_irq < FUNC0() &&
	    isa_irq_to_gsi[isa_irq] != INVALID_ACPI_IRQ) {
		*gsi = isa_irq_to_gsi[isa_irq];
		return 0;
	}

	return -1;
}