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
union apic_ir {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union apic_ir*,union apic_ir*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	union apic_ir irr, isr;
	unsigned int i;

	/* 512 loops are way oversized and give the APIC a chance to obey. */
	for (i = 0; i < 512; i++) {
		if (!FUNC0(&irr, &isr))
			return;
	}
	/* Dump the IRR/ISR content if that failed */
	FUNC1("APIC: Stale IRR: %256pb ISR: %256pb\n", irr.map, isr.map);
}