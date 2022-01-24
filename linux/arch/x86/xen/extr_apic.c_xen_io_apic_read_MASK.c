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
struct physdev_apic {unsigned int reg; unsigned int value; int /*<<< orphan*/  apic_physbase; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct physdev_apic*) ; 
 int /*<<< orphan*/  PHYSDEVOP_apic_read ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned apic, unsigned reg)
{
	struct physdev_apic apic_op;
	int ret;

	apic_op.apic_physbase = FUNC1(apic);
	apic_op.reg = reg;
	ret = FUNC0(PHYSDEVOP_apic_read, &apic_op);
	if (!ret)
		return apic_op.value;

	/* fallback to return an emulated IO_APIC values */
	if (reg == 0x1)
		return 0x00170020;
	else if (reg == 0x0)
		return apic << 24;

	return 0xfd;
}