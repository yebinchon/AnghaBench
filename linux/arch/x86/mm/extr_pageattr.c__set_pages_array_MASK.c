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
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CPA_PAGES_ARRAY ; 
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  _PAGE_CACHE_MASK ; 
 int _PAGE_CACHE_MODE_UC_MINUS ; 
 int _PAGE_CACHE_MODE_WC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page**) ; 
 int FUNC4 (struct page**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 unsigned long FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct page **pages, int numpages,
		enum page_cache_mode new_type)
{
	unsigned long start;
	unsigned long end;
	enum page_cache_mode set_type;
	int i;
	int free_idx;
	int ret;

	for (i = 0; i < numpages; i++) {
		if (FUNC0(pages[i]))
			continue;
		start = FUNC6(pages[i]) << PAGE_SHIFT;
		end = start + PAGE_SIZE;
		if (FUNC7(start, end, new_type, NULL))
			goto err_out;
	}

	/* If WC, set to UC- first and then WC */
	set_type = (new_type == _PAGE_CACHE_MODE_WC) ?
				_PAGE_CACHE_MODE_UC_MINUS : new_type;

	ret = FUNC4(pages, numpages,
				  FUNC2(set_type));
	if (!ret && new_type == _PAGE_CACHE_MODE_WC)
		ret = FUNC3(NULL, numpages,
					       FUNC2(
						_PAGE_CACHE_MODE_WC),
					       FUNC1(_PAGE_CACHE_MASK),
					       0, CPA_PAGES_ARRAY, pages);
	if (ret)
		goto err_out;
	return 0; /* Success */
err_out:
	free_idx = i;
	for (i = 0; i < free_idx; i++) {
		if (FUNC0(pages[i]))
			continue;
		start = FUNC6(pages[i]) << PAGE_SHIFT;
		end = start + PAGE_SIZE;
		FUNC5(start, end);
	}
	return -EINVAL;
}