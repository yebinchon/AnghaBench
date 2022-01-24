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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/ * kmap_pte ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 

void *FUNC12(struct page *page, pgprot_t prot)
{
	unsigned long vaddr;
	int idx, type;

	FUNC8();
	FUNC7();

	if (!FUNC1(page))
		return FUNC6(page);

	type = FUNC4();
	idx = type + KM_TYPE_NR*FUNC11();
	vaddr = FUNC2(FIX_KMAP_BEGIN + idx);
	FUNC0(!FUNC9(*(kmap_pte-idx)));
	FUNC10(kmap_pte-idx, FUNC5(page, prot));
	FUNC3();

	return (void *)vaddr;
}