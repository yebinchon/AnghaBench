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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ldt; } ;
struct mm_struct {TYPE_1__ context; } ;
struct ldt_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  flush_ldt ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ldt_struct*) ; 

__attribute__((used)) static void FUNC5(struct mm_struct *mm, struct ldt_struct *ldt)
{
	FUNC1(&mm->context.lock);

	/* Synchronizes with READ_ONCE in load_mm_ldt. */
	FUNC4(&mm->context.ldt, ldt);

	/* Activate the LDT for all CPUs using currents mm. */
	FUNC3(FUNC0(mm), flush_ldt, mm, true);

	FUNC2(&mm->context.lock);
}