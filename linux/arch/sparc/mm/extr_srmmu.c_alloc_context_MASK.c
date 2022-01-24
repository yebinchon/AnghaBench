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
struct mm_struct {int /*<<< orphan*/  context; } ;
struct ctx_list {int /*<<< orphan*/  ctx_number; struct mm_struct* ctx_mm; struct ctx_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct ctx_list*) ; 
 struct ctx_list ctx_free ; 
 struct ctx_list ctx_used ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx_list*) ; 

__attribute__((used)) static inline void FUNC5(struct mm_struct *old_mm, struct mm_struct *mm)
{
	struct ctx_list *ctxp;

	ctxp = ctx_free.next;
	if (ctxp != &ctx_free) {
		FUNC4(ctxp);
		FUNC0(ctxp);
		mm->context = ctxp->ctx_number;
		ctxp->ctx_mm = mm;
		return;
	}
	ctxp = ctx_used.next;
	if (ctxp->ctx_mm == old_mm)
		ctxp = ctxp->next;
	if (ctxp == &ctx_used)
		FUNC3("out of mmu contexts");
	FUNC1(ctxp->ctx_mm);
	FUNC2(ctxp->ctx_mm);
	FUNC4(ctxp);
	FUNC0(ctxp);
	ctxp->ctx_mm->context = NO_CONTEXT;
	ctxp->ctx_mm = mm;
	mm->context = ctxp->ctx_number;
}