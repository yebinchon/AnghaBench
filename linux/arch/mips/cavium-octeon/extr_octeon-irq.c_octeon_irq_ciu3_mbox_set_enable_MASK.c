#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int en; unsigned int idt; } ;
union cvmx_ciu3_iscx_ctl {scalar_t__ u64; TYPE_1__ s; } ;
typedef  scalar_t__ u64 ;
struct octeon_ciu3_info {scalar_t__ ciu3_addr; } ;
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int OCTEON_IRQ_MBOX0 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  octeon_ciu3_info ; 
 int /*<<< orphan*/  octeon_irq_ciu3_idt_ip3 ; 
 unsigned int FUNC4 (int,unsigned int) ; 
 struct octeon_ciu3_info* FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data, int cpu, bool en)
{
	struct octeon_ciu3_info *ciu3_info;
	unsigned int intsn;
	u64 isc_ctl_addr, isc_w1c_addr;
	union cvmx_ciu3_iscx_ctl isc_ctl;
	unsigned int mbox = data->irq - OCTEON_IRQ_MBOX0;

	intsn = FUNC4(cpu, mbox);
	ciu3_info = FUNC5(octeon_ciu3_info, cpu);
	isc_w1c_addr = ciu3_info->ciu3_addr + FUNC1(intsn);
	isc_ctl_addr = ciu3_info->ciu3_addr + FUNC0(intsn);

	isc_ctl.u64 = 0;
	isc_ctl.s.en = 1;

	FUNC3(isc_w1c_addr, isc_ctl.u64);
	FUNC3(isc_ctl_addr, 0);
	if (en) {
		unsigned int idt = FUNC5(octeon_irq_ciu3_idt_ip3, cpu);

		isc_ctl.u64 = 0;
		isc_ctl.s.en = 1;
		isc_ctl.s.idt = idt;
		FUNC3(isc_ctl_addr, isc_ctl.u64);
	}
	FUNC2(isc_ctl_addr);
}