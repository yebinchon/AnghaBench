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
struct drmem_lmb {int flags; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  nid; int /*<<< orphan*/  drc_index; } ;

/* Variables and functions */
 int DRCONF_MEM_ASSIGNED ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (struct drmem_lmb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drmem_lmb*) ; 
 int /*<<< orphan*/  FUNC5 (struct drmem_lmb*) ; 
 int /*<<< orphan*/  FUNC6 (struct drmem_lmb*) ; 
 unsigned long FUNC7 () ; 
 int FUNC8 (struct drmem_lmb*) ; 

__attribute__((used)) static int FUNC9(struct drmem_lmb *lmb)
{
	unsigned long block_sz;
	int rc;

	if (lmb->flags & DRCONF_MEM_ASSIGNED)
		return -EINVAL;

	rc = FUNC8(lmb);
	if (rc) {
		FUNC3(lmb->drc_index);
		return rc;
	}

	FUNC6(lmb);
	block_sz = FUNC7();

	/* Add the memory */
	rc = FUNC0(lmb->nid, lmb->base_addr, block_sz);
	if (rc) {
		FUNC4(lmb);
		return rc;
	}

	rc = FUNC2(lmb);
	if (rc) {
		FUNC1(lmb->nid, lmb->base_addr, block_sz);
		FUNC4(lmb);
		FUNC5(lmb);
	} else {
		lmb->flags |= DRCONF_MEM_ASSIGNED;
	}

	return rc;
}