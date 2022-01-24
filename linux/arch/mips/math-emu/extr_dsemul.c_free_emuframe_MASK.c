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
struct TYPE_3__ {int /*<<< orphan*/  bd_emupage_lock; int /*<<< orphan*/  bd_emupage_queue; int /*<<< orphan*/  bd_emupage_allocmap; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  TYPE_1__ mm_context_t ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(int idx, struct mm_struct *mm)
{
	mm_context_t *mm_ctx = &mm->context;

	FUNC2(&mm_ctx->bd_emupage_lock);

	FUNC1("free emuframe %d from %d\n", idx, current->pid);
	FUNC0(mm_ctx->bd_emupage_allocmap, idx, 1);

	/* If some thread is waiting for a frame, now's its chance */
	FUNC4(&mm_ctx->bd_emupage_queue);

	FUNC3(&mm_ctx->bd_emupage_lock);
}