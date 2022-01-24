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
struct TYPE_2__ {unsigned long sparc64_ctx_val; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int CTX_NR_BITS ; 
 int CTX_NR_MASK ; 
 unsigned long CTX_PGSZ_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int CTX_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx_alloc_lock ; 
 unsigned long FUNC2 (unsigned long*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 unsigned long* mmu_context_bmap ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int tlb_context_cache ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct mm_struct *mm)
{
	unsigned long ctx, new_ctx;
	unsigned long orig_pgsz_bits;

	FUNC5(&ctx_alloc_lock);
retry:
	/* wrap might have happened, test again if our context became valid */
	if (FUNC7(FUNC0(mm->context)))
		goto out;
	orig_pgsz_bits = (mm->context.sparc64_ctx_val & CTX_PGSZ_MASK);
	ctx = (tlb_context_cache + 1) & CTX_NR_MASK;
	new_ctx = FUNC2(mmu_context_bmap, 1 << CTX_NR_BITS, ctx);
	if (new_ctx >= (1 << CTX_NR_BITS)) {
		new_ctx = FUNC2(mmu_context_bmap, ctx, 1);
		if (new_ctx >= ctx) {
			FUNC4();
			goto retry;
		}
	}
	if (mm->context.sparc64_ctx_val)
		FUNC1(FUNC3(mm));
	mmu_context_bmap[new_ctx>>6] |= (1UL << (new_ctx & 63));
	new_ctx |= (tlb_context_cache & CTX_VERSION_MASK);
	tlb_context_cache = new_ctx;
	mm->context.sparc64_ctx_val = new_ctx | orig_pgsz_bits;
out:
	FUNC6(&ctx_alloc_lock);
}