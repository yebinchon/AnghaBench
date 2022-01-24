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
struct drbd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_TRY ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_pp_lock ; 
 int /*<<< orphan*/  drbd_pp_pool ; 
 unsigned int drbd_pp_vacant ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct page*,struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 struct page* FUNC3 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC7(struct drbd_device *device,
				       unsigned int number)
{
	struct page *page = NULL;
	struct page *tmp = NULL;
	unsigned int i = 0;

	/* Yes, testing drbd_pp_vacant outside the lock is racy.
	 * So what. It saves a spin_lock. */
	if (drbd_pp_vacant >= number) {
		FUNC5(&drbd_pp_lock);
		page = FUNC2(&drbd_pp_pool, number);
		if (page)
			drbd_pp_vacant -= number;
		FUNC6(&drbd_pp_lock);
		if (page)
			return page;
	}

	/* GFP_TRY, because we must not cause arbitrary write-out: in a DRBD
	 * "criss-cross" setup, that might cause write-out on some other DRBD,
	 * which in turn might block on the other node at this very place.  */
	for (i = 0; i < number; i++) {
		tmp = FUNC0(GFP_TRY);
		if (!tmp)
			break;
		FUNC4(tmp, (unsigned long)page);
		page = tmp;
	}

	if (i == number)
		return page;

	/* Not enough pages immediately available this time.
	 * No need to jump around here, drbd_alloc_pages will retry this
	 * function "soon". */
	if (page) {
		tmp = FUNC3(page, NULL);
		FUNC5(&drbd_pp_lock);
		FUNC1(&drbd_pp_pool, page, tmp);
		drbd_pp_vacant += i;
		FUNC6(&drbd_pp_lock);
	}
	return NULL;
}