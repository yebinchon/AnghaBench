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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct resource {int start; int end; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ ACPI_ACTIVE_HIGH ; 
 scalar_t__ ACPI_ACTIVE_LOW ; 
 scalar_t__ ACPI_EDGE_SENSITIVE ; 
 scalar_t__ ACPI_LEVEL_SENSITIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct resource *res, u32 gsi,
				     u8 triggering, u8 polarity, u8 shareable,
				     bool legacy)
{
	int irq, p, t;

	if (!FUNC5(gsi)) {
		FUNC1(res, gsi);
		return;
	}

	/*
	 * In IO-APIC mode, use overridden attribute. Two reasons:
	 * 1. BIOS bug in DSDT
	 * 2. BIOS uses IO-APIC mode Interrupt Source Override
	 *
	 * We do this only if we are dealing with IRQ() or IRQNoFlags()
	 * resource (the legacy ISA resources). With modern ACPI 5 devices
	 * using extended IRQ descriptors we take the IRQ configuration
	 * from _CRS directly.
	 */
	if (legacy && !FUNC2(gsi, &t, &p)) {
		u8 trig = t ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
		u8 pol = p ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;

		if (triggering != trig || polarity != pol) {
			FUNC4("ACPI: IRQ %d override to %s, %s\n", gsi,
				   t ? "level" : "edge", p ? "low" : "high");
			triggering = trig;
			polarity = pol;
		}
	}

	res->flags = FUNC0(triggering, polarity, shareable);
	irq = FUNC3(NULL, gsi, triggering, polarity);
	if (irq >= 0) {
		res->start = irq;
		res->end = irq;
	} else {
		FUNC1(res, gsi);
	}
}