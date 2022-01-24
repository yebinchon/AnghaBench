#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int clk_div; int bypass; scalar_t__ mux_sel; } ;
union cvmx_ciu_qlm_jtgc {scalar_t__ u64; TYPE_1__ s; } ;
typedef  int uint32_t ;
struct TYPE_4__ {int cpu_clock_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CIU_QLM_JTGC ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(void)
{
	union cvmx_ciu_qlm_jtgc jtgc;
	uint32_t clock_div = 0;
	uint32_t divisor = FUNC2()->cpu_clock_hz / (25 * 1000000);
	divisor = (divisor - 1) >> 2;
	/* Convert the divisor into a power of 2 shift */
	while (divisor) {
		clock_div++;
		divisor = divisor >> 1;
	}

	/*
	 * Clock divider for QLM JTAG operations.  eclk is divided by
	 * 2^(CLK_DIV + 2)
	 */
	jtgc.u64 = 0;
	jtgc.s.clk_div = clock_div;
	jtgc.s.mux_sel = 0;
	if (FUNC0(OCTEON_CN52XX))
		jtgc.s.bypass = 0x3;
	else
		jtgc.s.bypass = 0xf;
	FUNC3(CVMX_CIU_QLM_JTGC, jtgc.u64);
	FUNC1(CVMX_CIU_QLM_JTGC);
}