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

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  _PAGE_CACHE_MODE_WB ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u64 start, u64 end)
{
	struct page *page;
	u64 pfn;

	for (pfn = (start >> PAGE_SHIFT); pfn < (end >> PAGE_SHIFT); ++pfn) {
		page = FUNC0(pfn);
		FUNC1(page, _PAGE_CACHE_MODE_WB);
	}
	return 0;
}