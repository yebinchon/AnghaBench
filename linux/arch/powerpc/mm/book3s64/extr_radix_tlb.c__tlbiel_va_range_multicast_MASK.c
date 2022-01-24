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
struct tlbiel_va_range {unsigned long start; unsigned long end; unsigned long pid; unsigned long page_size; unsigned long psize; int also_pwc; } ;
struct TYPE_2__ {int /*<<< orphan*/  copros; } ;
struct mm_struct {TYPE_1__ context; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_tlbiel_va_range ; 
 struct cpumask* FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask*,int /*<<< orphan*/ ,struct tlbiel_va_range*,int) ; 

__attribute__((used)) static inline void FUNC4(struct mm_struct *mm,
				unsigned long start, unsigned long end,
				unsigned long pid, unsigned long page_size,
				unsigned long psize, bool also_pwc)
{
	struct cpumask *cpus = FUNC2(mm);
	struct tlbiel_va_range t = { .start = start, .end = end,
				.pid = pid, .page_size = page_size,
				.psize = psize, .also_pwc = also_pwc };

	FUNC3(cpus, do_tlbiel_va_range, &t, 1);
	if (FUNC1(&mm->context.copros) > 0)
		FUNC0(start, end, pid, page_size, psize, also_pwc);
}