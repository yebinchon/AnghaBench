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
struct op_counter_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int num_pmcs; } ;

/* Variables and functions */
 int PA6T_MMCR0_HANDDIS ; 
 int /*<<< orphan*/  SPRN_PA6T_MMCR0 ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 TYPE_1__* cur_cpu_spec ; 
 int mmcr0_val ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int oprofile_running ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 unsigned long* reset_value ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct op_counter_config *ctr)
{
	int i;

	/* Hold off event counting until rfid */
	u64 mmcr0 = mmcr0_val | PA6T_MMCR0_HANDDIS;

	for (i = 0; i < cur_cpu_spec->num_pmcs; i++)
		if (ctr[i].enabled)
			FUNC0(i, reset_value[i]);
		else
			FUNC0(i, 0UL);

	FUNC1(SPRN_PA6T_MMCR0, mmcr0);

	oprofile_running = 1;

	FUNC2("start on cpu %d, mmcr0 %llx\n", FUNC3(), mmcr0);

	return 0;
}