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
struct cpu_hw_events {int /*<<< orphan*/ * pcr; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_pcr ) (int) ;} ;
struct TYPE_3__ {int num_pcrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_hw_events ; 
 TYPE_2__* pcr_ops ; 
 TYPE_1__* sparc_pmu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct cpu_hw_events* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *unused)
{
	struct cpu_hw_events *cpuc = FUNC2(&cpu_hw_events);
	int i;

	FUNC0(NULL);
	for (i = 0; i < sparc_pmu->num_pcrs; i++)
		cpuc->pcr[i] = pcr_ops->read_pcr(i);
}