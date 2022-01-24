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
struct lc_element {int dummy; } ;
struct drbd_request {int dummy; } ;
struct drbd_peer_request {int dummy; } ;
struct bm_extent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIOSET_NEED_BVECS ; 
 int /*<<< orphan*/  BIO_POOL_SIZE ; 
 int DRBD_MAX_BIO_SIZE ; 
 int /*<<< orphan*/  DRBD_MIN_POOL_PAGES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int PAGE_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * drbd_al_ext_cache ; 
 int /*<<< orphan*/ * drbd_bm_ext_cache ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * drbd_ee_cache ; 
 int /*<<< orphan*/  drbd_ee_mempool ; 
 int /*<<< orphan*/  drbd_io_bio_set ; 
 int /*<<< orphan*/  drbd_md_io_bio_set ; 
 int /*<<< orphan*/  drbd_md_io_page_pool ; 
 int drbd_minor_count ; 
 int /*<<< orphan*/  drbd_pp_lock ; 
 struct page* drbd_pp_pool ; 
 int drbd_pp_vacant ; 
 int /*<<< orphan*/ * drbd_request_cache ; 
 int /*<<< orphan*/  drbd_request_mempool ; 
 void* FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void)
{
	struct page *page;
	const int number = (DRBD_MAX_BIO_SIZE/PAGE_SIZE) * drbd_minor_count;
	int i, ret;

	/* caches */
	drbd_request_cache = FUNC3(
		"drbd_req", sizeof(struct drbd_request), 0, 0, NULL);
	if (drbd_request_cache == NULL)
		goto Enomem;

	drbd_ee_cache = FUNC3(
		"drbd_ee", sizeof(struct drbd_peer_request), 0, 0, NULL);
	if (drbd_ee_cache == NULL)
		goto Enomem;

	drbd_bm_ext_cache = FUNC3(
		"drbd_bm", sizeof(struct bm_extent), 0, 0, NULL);
	if (drbd_bm_ext_cache == NULL)
		goto Enomem;

	drbd_al_ext_cache = FUNC3(
		"drbd_al", sizeof(struct lc_element), 0, 0, NULL);
	if (drbd_al_ext_cache == NULL)
		goto Enomem;

	/* mempools */
	ret = FUNC1(&drbd_io_bio_set, BIO_POOL_SIZE, 0, 0);
	if (ret)
		goto Enomem;

	ret = FUNC1(&drbd_md_io_bio_set, DRBD_MIN_POOL_PAGES, 0,
			  BIOSET_NEED_BVECS);
	if (ret)
		goto Enomem;

	ret = FUNC4(&drbd_md_io_page_pool, DRBD_MIN_POOL_PAGES, 0);
	if (ret)
		goto Enomem;

	ret = FUNC5(&drbd_request_mempool, number,
				     drbd_request_cache);
	if (ret)
		goto Enomem;

	ret = FUNC5(&drbd_ee_mempool, number, drbd_ee_cache);
	if (ret)
		goto Enomem;

	/* drbd's page pool */
	FUNC7(&drbd_pp_lock);

	for (i = 0; i < number; i++) {
		page = FUNC0(GFP_HIGHUSER);
		if (!page)
			goto Enomem;
		FUNC6(page, (unsigned long)drbd_pp_pool);
		drbd_pp_pool = page;
	}
	drbd_pp_vacant = number;

	return 0;

Enomem:
	FUNC2(); /* in case we allocated some */
	return -ENOMEM;
}