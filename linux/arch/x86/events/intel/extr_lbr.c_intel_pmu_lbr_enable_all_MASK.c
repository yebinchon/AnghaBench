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
struct cpu_hw_events {scalar_t__ lbr_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 struct cpu_hw_events* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(bool pmi)
{
	struct cpu_hw_events *cpuc = FUNC1(&cpu_hw_events);

	if (cpuc->lbr_users)
		FUNC0(pmi);
}