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
struct pmb_entry {unsigned long size; int /*<<< orphan*/  lock; struct pmb_entry* link; } ;
typedef  unsigned long phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_3__ {unsigned long size; unsigned long flag; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct pmb_entry*) ; 
 int /*<<< orphan*/  PMB_NO_ENTRY ; 
 int FUNC2 (struct pmb_entry*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 unsigned long SZ_16M ; 
 int /*<<< orphan*/  FUNC3 (struct pmb_entry*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (struct pmb_entry*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 
 struct pmb_entry* FUNC9 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long,unsigned long) ; 
 TYPE_1__* pmb_sizes ; 
 int /*<<< orphan*/  FUNC11 (struct pmb_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC16(unsigned long vaddr, phys_addr_t phys,
		     unsigned long size, pgprot_t prot)
{
	struct pmb_entry *pmbp, *pmbe;
	unsigned long orig_addr, orig_size;
	unsigned long flags, pmb_flags;
	int i, mapped;

	if (size < SZ_16M)
		return -EINVAL;
	if (!FUNC8(vaddr, size))
		return -EFAULT;
	if (FUNC10(vaddr, phys, size))
		return 0;

	orig_addr = vaddr;
	orig_size = size;

	FUNC5(vaddr, vaddr + size);

	pmb_flags = FUNC7(prot);
	pmbp = NULL;

	do {
		for (i = mapped = 0; i < FUNC0(pmb_sizes); i++) {
			if (size < pmb_sizes[i].size)
				continue;

			pmbe = FUNC9(vaddr, phys, pmb_flags |
					 pmb_sizes[i].flag, PMB_NO_ENTRY);
			if (FUNC1(pmbe)) {
				FUNC11(pmbp, mapped);
				return FUNC2(pmbe);
			}

			FUNC12(&pmbe->lock, flags);

			pmbe->size = pmb_sizes[i].size;

			FUNC3(pmbe);

			phys	+= pmbe->size;
			vaddr	+= pmbe->size;
			size	-= pmbe->size;

			/*
			 * Link adjacent entries that span multiple PMB
			 * entries for easier tear-down.
			 */
			if (FUNC6(pmbp)) {
				FUNC13(&pmbp->lock,
						     SINGLE_DEPTH_NESTING);
				pmbp->link = pmbe;
				FUNC14(&pmbp->lock);
			}

			pmbp = pmbe;

			/*
			 * Instead of trying smaller sizes on every
			 * iteration (even if we succeed in allocating
			 * space), try using pmb_sizes[i].size again.
			 */
			i--;
			mapped++;

			FUNC15(&pmbe->lock, flags);
		}
	} while (size >= SZ_16M);

	FUNC4(orig_addr, orig_addr + orig_size);

	return 0;
}