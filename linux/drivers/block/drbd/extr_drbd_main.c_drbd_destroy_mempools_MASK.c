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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * drbd_al_ext_cache ; 
 int /*<<< orphan*/ * drbd_bm_ext_cache ; 
 int /*<<< orphan*/ * drbd_ee_cache ; 
 int /*<<< orphan*/  drbd_ee_mempool ; 
 int /*<<< orphan*/  drbd_io_bio_set ; 
 int /*<<< orphan*/  drbd_md_io_bio_set ; 
 int /*<<< orphan*/  drbd_md_io_page_pool ; 
 struct page* drbd_pp_pool ; 
 int /*<<< orphan*/  drbd_pp_vacant ; 
 int /*<<< orphan*/ * drbd_request_cache ; 
 int /*<<< orphan*/  drbd_request_mempool ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct page *page;

	while (drbd_pp_pool) {
		page = drbd_pp_pool;
		drbd_pp_pool = (struct page *)FUNC4(page);
		FUNC0(page);
		drbd_pp_vacant--;
	}

	/* D_ASSERT(device, atomic_read(&drbd_pp_vacant)==0); */

	FUNC1(&drbd_io_bio_set);
	FUNC1(&drbd_md_io_bio_set);
	FUNC3(&drbd_md_io_page_pool);
	FUNC3(&drbd_ee_mempool);
	FUNC3(&drbd_request_mempool);
	FUNC2(drbd_ee_cache);
	FUNC2(drbd_request_cache);
	FUNC2(drbd_bm_ext_cache);
	FUNC2(drbd_al_ext_cache);

	drbd_ee_cache        = NULL;
	drbd_request_cache   = NULL;
	drbd_bm_ext_cache    = NULL;
	drbd_al_ext_cache    = NULL;

	return;
}