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
struct cpu_hw_events {int /*<<< orphan*/ * saved_ctrl; } ;
struct TYPE_2__ {int num_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_hw_events ; 
 TYPE_1__ mipspmu ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct cpu_hw_events *cpuc = FUNC1(&cpu_hw_events);
	int ctr = mipspmu.num_counters;

	do {
		ctr--;
		FUNC0(ctr, cpuc->saved_ctrl[ctr]);
	} while (ctr > 0);
}