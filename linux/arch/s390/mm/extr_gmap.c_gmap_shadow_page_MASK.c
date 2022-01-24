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
 unsigned long PAGE_MASK ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int _PAGE_PROTECT ; 
 unsigned long _SHADOW_RMAP_PGTABLE ; 
 unsigned long FUNC2 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*,unsigned long,struct gmap_rmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct gmap*,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct gmap*,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (struct gmap*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gmap_rmap*) ; 
 struct gmap_rmap* FUNC10 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct gmap *sg, unsigned long saddr, pte_t pte)
{
	struct gmap *parent;
	struct gmap_rmap *rmap;
	unsigned long vmaddr, paddr;
	spinlock_t *ptl;
	pte_t *sptep, *tptep;
	int prot;
	int rc;

	FUNC0(!FUNC4(sg));
	parent = sg->parent;
	prot = (FUNC11(pte) & _PAGE_PROTECT) ? PROT_READ : PROT_WRITE;

	rmap = FUNC10(sizeof(*rmap), GFP_KERNEL);
	if (!rmap)
		return -ENOMEM;
	rmap->raddr = (saddr & PAGE_MASK) | _SHADOW_RMAP_PGTABLE;

	while (1) {
		paddr = FUNC11(pte) & PAGE_MASK;
		vmaddr = FUNC2(parent, paddr);
		if (FUNC1(vmaddr)) {
			rc = vmaddr;
			break;
		}
		rc = FUNC13(GFP_KERNEL);
		if (rc)
			break;
		rc = -EAGAIN;
		sptep = FUNC7(parent, paddr, &ptl);
		if (sptep) {
			FUNC15(&sg->guest_table_lock);
			/* Get page table pointer */
			tptep = (pte_t *) FUNC8(sg, saddr, 0);
			if (!tptep) {
				FUNC16(&sg->guest_table_lock);
				FUNC5(ptl);
				FUNC14();
				break;
			}
			rc = FUNC12(sg->mm, saddr, sptep, tptep, pte);
			if (rc > 0) {
				/* Success and a new mapping */
				FUNC3(sg, vmaddr, rmap);
				rmap = NULL;
				rc = 0;
			}
			FUNC5(ptl);
			FUNC16(&sg->guest_table_lock);
		}
		FUNC14();
		if (!rc)
			break;
		rc = FUNC6(parent, paddr, vmaddr, prot);
		if (rc)
			break;
	}
	FUNC9(rmap);
	return rc;
}