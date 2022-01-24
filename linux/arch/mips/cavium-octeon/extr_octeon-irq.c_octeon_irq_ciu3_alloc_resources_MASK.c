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
struct octeon_ciu3_info {scalar_t__ ciu3_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int CIU3_MBOX_PER_CORE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  octeon_ciu3_info ; 
 int /*<<< orphan*/  octeon_irq_ciu3_idt_ip2 ; 
 int /*<<< orphan*/  octeon_irq_ciu3_idt_ip3 ; 
 unsigned int FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct octeon_ciu3_info *ciu3_info)
{
	u64 b = ciu3_info->ciu3_addr;
	int idt_ip2, idt_ip3, idt_ip4;
	int unused_idt2;
	int core = FUNC6();
	int i;

	FUNC5(octeon_ciu3_info, ciu3_info);

	/*
	 * 4 idt per core starting from 1 because zero is reserved.
	 * Base idt per core is 4 * core + 1
	 */
	idt_ip2 = core * 4 + 1;
	idt_ip3 = core * 4 + 2;
	idt_ip4 = core * 4 + 3;
	unused_idt2 = core * 4 + 4;
	FUNC5(octeon_irq_ciu3_idt_ip2, idt_ip2);
	FUNC5(octeon_irq_ciu3_idt_ip3, idt_ip3);

	/* ip2 interrupts for this CPU */
	FUNC7(b + FUNC0(idt_ip2), 0);
	FUNC7(b + FUNC2(idt_ip2, 0), 1ull << core);
	FUNC7(b + FUNC1(idt_ip2), 0);

	/* ip3 interrupts for this CPU */
	FUNC7(b + FUNC0(idt_ip3), 1);
	FUNC7(b + FUNC2(idt_ip3, 0), 1ull << core);
	FUNC7(b + FUNC1(idt_ip3), 0);

	/* ip4 interrupts for this CPU */
	FUNC7(b + FUNC0(idt_ip4), 2);
	FUNC7(b + FUNC2(idt_ip4, 0), 0);
	FUNC7(b + FUNC1(idt_ip4), 0);

	FUNC7(b + FUNC0(unused_idt2), 0);
	FUNC7(b + FUNC2(unused_idt2, 0), 0);
	FUNC7(b + FUNC1(unused_idt2), 0);

	for (i = 0; i < CIU3_MBOX_PER_CORE; i++) {
		unsigned int intsn = FUNC8(core, i);

		FUNC7(b + FUNC4(intsn), 2);
		FUNC7(b + FUNC3(intsn), 0);
	}

	return 0;
}