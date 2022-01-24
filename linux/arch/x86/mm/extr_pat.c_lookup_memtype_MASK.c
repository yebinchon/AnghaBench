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
typedef  int u64 ;
struct page {int dummy; } ;
struct memtype {int type; } ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;
struct TYPE_2__ {scalar_t__ (* is_untracked_pat_range ) (int,scalar_t__) ;} ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int _PAGE_CACHE_MODE_UC_MINUS ; 
 int _PAGE_CACHE_MODE_WB ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  memtype_lock ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 struct page* FUNC2 (int) ; 
 struct memtype* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 TYPE_1__ x86_platform ; 

__attribute__((used)) static enum page_cache_mode FUNC7(u64 paddr)
{
	enum page_cache_mode rettype = _PAGE_CACHE_MODE_WB;
	struct memtype *entry;

	if (x86_platform.is_untracked_pat_range(paddr, paddr + PAGE_SIZE))
		return rettype;

	if (FUNC1(paddr, paddr + PAGE_SIZE)) {
		struct page *page;

		page = FUNC2(paddr >> PAGE_SHIFT);
		return FUNC0(page);
	}

	FUNC4(&memtype_lock);

	entry = FUNC3(paddr);
	if (entry != NULL)
		rettype = entry->type;
	else
		rettype = _PAGE_CACHE_MODE_UC_MINUS;

	FUNC5(&memtype_lock);
	return rettype;
}