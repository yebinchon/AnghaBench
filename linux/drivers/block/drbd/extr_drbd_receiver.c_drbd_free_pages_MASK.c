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
struct drbd_device {int /*<<< orphan*/  pp_in_use; int /*<<< orphan*/  pp_in_use_by_net; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int DRBD_MAX_BIO_SIZE ; 
 int PAGE_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int drbd_minor_count ; 
 int /*<<< orphan*/  drbd_pp_lock ; 
 int /*<<< orphan*/  drbd_pp_pool ; 
 int drbd_pp_vacant ; 
 int /*<<< orphan*/  drbd_pp_wait ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct page*,struct page*) ; 
 int FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct page*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct drbd_device *device, struct page *page, int is_net)
{
	atomic_t *a = is_net ? &device->pp_in_use_by_net : &device->pp_in_use;
	int i;

	if (page == NULL)
		return;

	if (drbd_pp_vacant > (DRBD_MAX_BIO_SIZE/PAGE_SIZE) * drbd_minor_count)
		i = FUNC3(page);
	else {
		struct page *tmp;
		tmp = FUNC4(page, &i);
		FUNC5(&drbd_pp_lock);
		FUNC2(&drbd_pp_pool, page, tmp);
		drbd_pp_vacant += i;
		FUNC6(&drbd_pp_lock);
	}
	i = FUNC0(i, a);
	if (i < 0)
		FUNC1(device, "ASSERTION FAILED: %s: %d < 0\n",
			is_net ? "pp_in_use_by_net" : "pp_in_use", i);
	FUNC7(&drbd_pp_wait);
}