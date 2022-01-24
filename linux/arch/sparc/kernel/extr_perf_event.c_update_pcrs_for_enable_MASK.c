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
struct cpu_hw_events {scalar_t__ n_added; } ;
struct TYPE_2__ {int num_pcrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_hw_events*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_hw_events*) ; 
 TYPE_1__* sparc_pmu ; 

__attribute__((used)) static void FUNC3(struct cpu_hw_events *cpuc)
{
	if (cpuc->n_added)
		FUNC2(cpuc);

	if (sparc_pmu->num_pcrs == 1) {
		FUNC1(cpuc);
	} else {
		FUNC0(cpuc);
	}
}