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
struct TYPE_4__ {int /*<<< orphan*/  (* read_pic ) (int) ;int /*<<< orphan*/  (* read_pcr ) (int) ;} ;
struct TYPE_3__ {int num_pcrs; int num_pic_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_2__* pcr_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 () ; 
 TYPE_1__* sparc_pmu ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void)
{
	unsigned long flags;
	int cpu, i;

	if (!sparc_pmu)
		return;

	FUNC1(flags);

	cpu = FUNC3();

	FUNC2("\n");
	for (i = 0; i < sparc_pmu->num_pcrs; i++)
		FUNC2("CPU#%d: PCR%d[%016llx]\n",
			cpu, i, pcr_ops->read_pcr(i));
	for (i = 0; i < sparc_pmu->num_pic_regs; i++)
		FUNC2("CPU#%d: PIC%d[%016llx]\n",
			cpu, i, pcr_ops->read_pic(i));

	FUNC0(flags);
}