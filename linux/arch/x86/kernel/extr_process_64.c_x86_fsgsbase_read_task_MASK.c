#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * tls_array; } ;
struct task_struct {TYPE_3__* mm; TYPE_1__ thread; } ;
struct ldt_struct {unsigned short nr_entries; int /*<<< orphan*/ * entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; struct ldt_struct* ldt; } ;
struct TYPE_6__ {TYPE_2__ context; } ;

/* Variables and functions */
 unsigned short GDT_ENTRIES ; 
 unsigned short GDT_ENTRY_TLS_MAX ; 
 unsigned short GDT_ENTRY_TLS_MIN ; 
 unsigned short SEGMENT_TI_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static unsigned long FUNC5(struct task_struct *task,
					    unsigned short selector)
{
	unsigned short idx = selector >> 3;
	unsigned long base;

	if (FUNC1((selector & SEGMENT_TI_MASK) == 0)) {
		if (FUNC4(idx >= GDT_ENTRIES))
			return 0;

		/*
		 * There are no user segments in the GDT with nonzero bases
		 * other than the TLS segments.
		 */
		if (idx < GDT_ENTRY_TLS_MIN || idx > GDT_ENTRY_TLS_MAX)
			return 0;

		idx -= GDT_ENTRY_TLS_MIN;
		base = FUNC0(&task->thread.tls_array[idx]);
	} else {
#ifdef CONFIG_MODIFY_LDT_SYSCALL
		struct ldt_struct *ldt;

		/*
		 * If performance here mattered, we could protect the LDT
		 * with RCU.  This is a slow path, though, so we can just
		 * take the mutex.
		 */
		mutex_lock(&task->mm->context.lock);
		ldt = task->mm->context.ldt;
		if (unlikely(idx >= ldt->nr_entries))
			base = 0;
		else
			base = get_desc_base(ldt->entries + idx);
		mutex_unlock(&task->mm->context.lock);
#else
		base = 0;
#endif
	}

	return base;
}