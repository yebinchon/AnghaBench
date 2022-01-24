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
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* active_mm; struct mm_struct* mm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,struct mm_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 struct mm_struct* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct mm_struct * mm = FUNC2();
	struct mm_struct *active_mm = current->active_mm;

	if (!mm)
		return -ENOMEM;

	current->mm = mm;
	current->active_mm = mm;
	FUNC0(active_mm, mm);
	FUNC3(active_mm);
	FUNC1(mm);
	return 0;
}