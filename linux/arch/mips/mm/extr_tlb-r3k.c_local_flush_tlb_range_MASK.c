#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
struct TYPE_3__ {unsigned long tlbsize; } ;

/* Variables and functions */
 int KSEG0 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 unsigned long FUNC0 (TYPE_1__*) ; 
 unsigned long FUNC1 (int,struct mm_struct*) ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct vm_area_struct *vma, unsigned long start,
			   unsigned long end)
{
	unsigned long asid_mask = FUNC0(&current_cpu_data);
	struct mm_struct *mm = vma->vm_mm;
	int cpu = FUNC8();

	if (FUNC1(cpu, mm) != 0) {
		unsigned long size, flags;

#ifdef DEBUG_TLB
		printk("[tlbrange<%lu,0x%08lx,0x%08lx>]",
			cpu_context(cpu, mm) & asid_mask, start, end);
#endif
		FUNC4(flags);
		size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
		if (size <= current_cpu_data.tlbsize) {
			int oldpid = FUNC6() & asid_mask;
			int newpid = FUNC1(cpu, mm) & asid_mask;

			start &= PAGE_MASK;
			end += PAGE_SIZE - 1;
			end &= PAGE_MASK;
			while (start < end) {
				int idx;

				FUNC11(start | newpid);
				start += PAGE_SIZE;	/* BARRIER */
				FUNC9();
				idx = FUNC7();
				FUNC12(0);
				FUNC11(KSEG0);
				if (idx < 0)		/* BARRIER */
					continue;
				FUNC10();
			}
			FUNC11(oldpid);
		} else {
			FUNC2(mm);
		}
		FUNC3(flags);
	}
}