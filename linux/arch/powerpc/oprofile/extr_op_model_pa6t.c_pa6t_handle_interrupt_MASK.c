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
typedef  int u64 ;
struct pt_regs {int dummy; } ;
struct op_counter_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int num_pmcs; } ;

/* Variables and functions */
 int PA6T_MMCR0_HANDDIS ; 
 int PA6T_MMCR0_SIARLOG ; 
 int /*<<< orphan*/  SPRN_PA6T_MMCR0 ; 
 int /*<<< orphan*/  SPRN_PA6T_SIAR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 TYPE_1__* cur_cpu_spec ; 
 int FUNC2 (unsigned long) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int mmcr0_val ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,struct pt_regs*,int,int) ; 
 scalar_t__ oprofile_running ; 
 unsigned long* reset_value ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs,
				  struct op_counter_config *ctr)
{
	unsigned long pc = FUNC3(SPRN_PA6T_SIAR);
	int is_kernel = FUNC2(pc);
	u64 val;
	int i;
	u64 mmcr0;

	/* disable perfmon counting until rfid */
	mmcr0 = FUNC3(SPRN_PA6T_MMCR0);
	FUNC4(SPRN_PA6T_MMCR0, mmcr0 | PA6T_MMCR0_HANDDIS);

	/* Record samples. We've got one global bit for whether a sample
	 * was taken, so add it for any counter that triggered overflow.
	 */
	for (i = 0; i < cur_cpu_spec->num_pmcs; i++) {
		val = FUNC0(i);
		if (val & (0x1UL << 39)) { /* Overflow bit set */
			if (oprofile_running && ctr[i].enabled) {
				if (mmcr0 & PA6T_MMCR0_SIARLOG)
					FUNC5(pc, regs, i, is_kernel);
				FUNC1(i, reset_value[i]);
			} else {
				FUNC1(i, 0UL);
			}
		}
	}

	/* Restore mmcr0 to a good known value since the PMI changes it */
	mmcr0 = mmcr0_val | PA6T_MMCR0_HANDDIS;
	FUNC4(SPRN_PA6T_MMCR0, mmcr0);
}