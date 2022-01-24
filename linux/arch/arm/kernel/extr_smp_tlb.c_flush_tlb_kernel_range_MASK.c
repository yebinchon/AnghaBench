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
struct tlb_args {unsigned long ta_start; unsigned long ta_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ipi_flush_tlb_kernel_range ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tlb_args*,int) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(unsigned long start, unsigned long end)
{
	if (FUNC3()) {
		struct tlb_args ta;
		ta.ta_start = start;
		ta.ta_end = end;
		FUNC2(ipi_flush_tlb_kernel_range, &ta, 1);
	} else
		FUNC1(start, end);
	FUNC0();
}