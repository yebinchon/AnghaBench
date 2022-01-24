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
struct TYPE_3__ {int cpu; void** asid; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 void* NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 () ; 

void FUNC4(struct mm_struct *mm)
{
	int cpu = FUNC3();

	if (mm == current->active_mm) {
		unsigned long flags;
		FUNC2(flags);
		mm->context.asid[cpu] = NO_CONTEXT;
		FUNC0(mm, cpu);
		FUNC1(flags);
	} else {
		mm->context.asid[cpu] = NO_CONTEXT;
		mm->context.cpu = -1;
	}
}