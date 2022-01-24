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
struct TYPE_2__ {int raw; } ;
union cvmx_ciu3_iscx_w1s {scalar_t__ u64; TYPE_1__ s; } ;
typedef  scalar_t__ u64 ;
struct octeon_ciu3_info {scalar_t__ ciu3_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int CIU3_MBOX_PER_CORE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  octeon_ciu3_info ; 
 unsigned int FUNC4 (int,unsigned int) ; 
 struct octeon_ciu3_info* FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(int cpu, unsigned int mbox)
{
	struct octeon_ciu3_info *ciu3_info;
	unsigned int intsn;
	union cvmx_ciu3_iscx_w1s isc_w1s;
	u64 isc_w1s_addr;

	if (FUNC1(mbox >= CIU3_MBOX_PER_CORE))
		return;

	intsn = FUNC4(cpu, mbox);
	ciu3_info = FUNC5(octeon_ciu3_info, cpu);
	isc_w1s_addr = ciu3_info->ciu3_addr + FUNC0(intsn);

	isc_w1s.u64 = 0;
	isc_w1s.s.raw = 1;

	FUNC3(isc_w1s_addr, isc_w1s.u64);
	FUNC2(isc_w1s_addr);
}