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
struct tlbiel_va {unsigned long va; unsigned long pid; unsigned long psize; unsigned long ric; } ;
struct TYPE_2__ {int /*<<< orphan*/  copros; } ;
struct mm_struct {TYPE_1__ context; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RIC_FLUSH_TLB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_tlbiel_va ; 
 struct cpumask* FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask*,int /*<<< orphan*/ ,struct tlbiel_va*,int) ; 

__attribute__((used)) static inline void FUNC4(struct mm_struct *mm,
				unsigned long va, unsigned long pid,
				unsigned long psize, unsigned long ric)
{
	struct cpumask *cpus = FUNC2(mm);
	struct tlbiel_va t = { .va = va, .pid = pid, .psize = psize, .ric = ric };
	FUNC3(cpus, do_tlbiel_va, &t, 1);
	if (FUNC1(&mm->context.copros) > 0)
		FUNC0(va, pid, psize, RIC_FLUSH_TLB);
}