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
struct hw_perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PMCR_PMEN ; 
 unsigned int PMCR_PMM_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hw_perf_event *hwc, int idx)
{
	unsigned int tmp;

	tmp = FUNC1(FUNC0(idx));
	tmp &= ~(PMCR_PMM_MASK | PMCR_PMEN);
	FUNC2(tmp, FUNC0(idx));
}