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
struct bio_vec {int bv_offset; int bv_len; struct page* bv_page; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_vec const*,struct page*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static inline bool FUNC5(const struct bio_vec *bv,
		struct page *page, unsigned int len, unsigned int off,
		bool *same_page)
{
	phys_addr_t vec_end_addr = FUNC1(bv->bv_page) +
		bv->bv_offset + bv->bv_len - 1;
	phys_addr_t page_addr = FUNC1(page);

	if (vec_end_addr + 1 != page_addr + off)
		return false;
	if (FUNC4() && !FUNC3(bv, page))
		return false;

	*same_page = ((vec_end_addr & PAGE_MASK) == page_addr);
	if (!*same_page && FUNC2(FUNC0(vec_end_addr)) + 1 != page)
		return false;
	return true;
}