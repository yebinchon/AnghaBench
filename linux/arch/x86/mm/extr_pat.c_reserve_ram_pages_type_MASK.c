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
typedef  int u64 ;
struct page {int dummy; } ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _PAGE_CACHE_MODE_UC ; 
 int _PAGE_CACHE_MODE_UC_MINUS ; 
 int _PAGE_CACHE_MODE_WB ; 
 int _PAGE_CACHE_MODE_WP ; 
 int FUNC1 (struct page*) ; 
 struct page* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 

__attribute__((used)) static int FUNC5(u64 start, u64 end,
				  enum page_cache_mode req_type,
				  enum page_cache_mode *new_type)
{
	struct page *page;
	u64 pfn;

	if (req_type == _PAGE_CACHE_MODE_WP) {
		if (new_type)
			*new_type = _PAGE_CACHE_MODE_UC_MINUS;
		return -EINVAL;
	}

	if (req_type == _PAGE_CACHE_MODE_UC) {
		/* We do not support strong UC */
		FUNC0(1);
		req_type = _PAGE_CACHE_MODE_UC_MINUS;
	}

	for (pfn = (start >> PAGE_SHIFT); pfn < (end >> PAGE_SHIFT); ++pfn) {
		enum page_cache_mode type;

		page = FUNC2(pfn);
		type = FUNC1(page);
		if (type != _PAGE_CACHE_MODE_WB) {
			FUNC3("x86/PAT: reserve_ram_pages_type failed [mem %#010Lx-%#010Lx], track 0x%x, req 0x%x\n",
				start, end - 1, type, req_type);
			if (new_type)
				*new_type = type;

			return -EBUSY;
		}
	}

	if (new_type)
		*new_type = req_type;

	for (pfn = (start >> PAGE_SHIFT); pfn < (end >> PAGE_SHIFT); ++pfn) {
		page = FUNC2(pfn);
		FUNC4(page, req_type);
	}
	return 0;
}