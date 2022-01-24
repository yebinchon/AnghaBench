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
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;

/* Variables and functions */
 int _PAGE_CACHE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct vm_area_struct *vma, pgprot_t *prot, pfn_t pfn)
{
	enum page_cache_mode pcm;

	if (!FUNC3())
		return;

	/* Set prot based on lookup */
	pcm = FUNC2(FUNC4(pfn));
	*prot = FUNC0((FUNC5(*prot) & (~_PAGE_CACHE_MASK)) |
			 FUNC1(pcm));
}