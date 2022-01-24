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
struct pmu_hw_events {int /*<<< orphan*/  pmu_lock; } ;
struct nds32_pmu {struct pmu_hw_events* (* get_hw_events ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NDS32_SR_PFM_CTL ; 
 unsigned int* PFM_CTL_EN ; 
 unsigned int* PFM_CTL_OVF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pmu_hw_events* FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct nds32_pmu *cpu_pmu)
{
	unsigned long flags;
	unsigned int val;
	struct pmu_hw_events *events = cpu_pmu->get_hw_events();

	FUNC2(&events->pmu_lock, flags);

	/* Enable all counters , NDS PFM has 3 counters */
	val = FUNC0(NDS32_SR_PFM_CTL);
	val |= (PFM_CTL_EN[0] | PFM_CTL_EN[1] | PFM_CTL_EN[2]);
	val &= ~(PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2]);
	FUNC1(val, NDS32_SR_PFM_CTL);

	FUNC3(&events->pmu_lock, flags);
}