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
typedef  int /*<<< orphan*/  u32 ;
struct tlb_pending_info {unsigned long nr; unsigned long* vaddrs; int /*<<< orphan*/  ctx; } ;
struct mm_struct {int /*<<< orphan*/  mm_users; int /*<<< orphan*/  context; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* current ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tlb_pending_info*,int) ; 
 int /*<<< orphan*/  tlb_pending_func ; 

void FUNC9(struct mm_struct *mm, unsigned long nr, unsigned long *vaddrs)
{
	u32 ctx = FUNC0(mm->context);
	struct tlb_pending_info info;
	int cpu = FUNC5();

	info.ctx = ctx;
	info.nr = nr;
	info.vaddrs = vaddrs;

	if (mm == current->mm && FUNC2(&mm->mm_users) == 1)
		FUNC3(FUNC6(mm), FUNC4(cpu));
	else
		FUNC8(FUNC6(mm), tlb_pending_func,
				       &info, 1);

	FUNC1(ctx, nr, vaddrs);

	FUNC7();
}