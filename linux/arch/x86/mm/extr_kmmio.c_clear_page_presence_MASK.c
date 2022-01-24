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
struct kmmio_fault_page {unsigned int addr; int /*<<< orphan*/  old_presence; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
#define  PG_LEVEL_2M 129 
#define  PG_LEVEL_4K 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct kmmio_fault_page *f, bool clear)
{
	unsigned int level;
	pte_t *pte = FUNC3(f->addr, &level);

	if (!pte) {
		FUNC4("no pte for addr 0x%08lx\n", f->addr);
		return -1;
	}

	switch (level) {
	case PG_LEVEL_2M:
		FUNC1((pmd_t *)pte, clear, &f->old_presence);
		break;
	case PG_LEVEL_4K:
		FUNC2(pte, clear, &f->old_presence);
		break;
	default:
		FUNC4("unexpected page level 0x%x.\n", level);
		return -1;
	}

	FUNC0(f->addr);
	return 0;
}