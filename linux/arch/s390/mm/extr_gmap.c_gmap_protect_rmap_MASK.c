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
struct gmap_rmap {unsigned long raddr; } ;
struct gmap {int /*<<< orphan*/  guest_table_lock; int /*<<< orphan*/  mm; struct gmap* parent; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PGSTE_VSIE_BIT ; 
 int /*<<< orphan*/  PROT_READ ; 
 unsigned long FUNC2 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*,unsigned long,struct gmap_rmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct gmap*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct gmap*,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (struct gmap_rmap*) ; 
 struct gmap_rmap* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct gmap *sg, unsigned long raddr,
			     unsigned long paddr, unsigned long len)
{
	struct gmap *parent;
	struct gmap_rmap *rmap;
	unsigned long vmaddr;
	spinlock_t *ptl;
	pte_t *ptep;
	int rc;

	FUNC0(!FUNC4(sg));
	parent = sg->parent;
	while (len) {
		vmaddr = FUNC2(parent, paddr);
		if (FUNC1(vmaddr))
			return vmaddr;
		rmap = FUNC9(sizeof(*rmap), GFP_KERNEL);
		if (!rmap)
			return -ENOMEM;
		rmap->raddr = raddr;
		rc = FUNC11(GFP_KERNEL);
		if (rc) {
			FUNC8(rmap);
			return rc;
		}
		rc = -EAGAIN;
		ptep = FUNC7(parent, paddr, &ptl);
		if (ptep) {
			FUNC13(&sg->guest_table_lock);
			rc = FUNC10(parent->mm, paddr, ptep, PROT_READ,
					     PGSTE_VSIE_BIT);
			if (!rc)
				FUNC3(sg, vmaddr, rmap);
			FUNC14(&sg->guest_table_lock);
			FUNC5(ptl);
		}
		FUNC12();
		if (rc) {
			FUNC8(rmap);
			rc = FUNC6(parent, paddr, vmaddr, PROT_READ);
			if (rc)
				return rc;
			continue;
		}
		paddr += PAGE_SIZE;
		len -= PAGE_SIZE;
	}
	return 0;
}