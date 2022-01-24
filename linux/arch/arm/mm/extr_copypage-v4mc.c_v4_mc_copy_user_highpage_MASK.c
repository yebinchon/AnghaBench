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
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ COPYPAGE_MINICACHE ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct page*) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  minicache_lock ; 
 int /*<<< orphan*/  minicache_pgprot ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct page *to, struct page *from,
	unsigned long vaddr, struct vm_area_struct *vma)
{
	void *kto = FUNC1(to);

	if (!FUNC9(PG_dcache_clean, &from->flags))
		FUNC0(FUNC5(from), from);

	FUNC6(&minicache_lock);

	FUNC8(COPYPAGE_MINICACHE, FUNC4(from, minicache_pgprot));

	FUNC3((void *)COPYPAGE_MINICACHE, kto);

	FUNC7(&minicache_lock);

	FUNC2(kto);
}