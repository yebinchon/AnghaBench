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
struct page {int dummy; } ;
struct net_conf {int max_buffers; } ;
struct drbd_peer_device {TYPE_1__* connection; struct drbd_device* device; } ;
struct drbd_device {int /*<<< orphan*/  pp_in_use; int /*<<< orphan*/  pp_in_use_by_net; } ;
struct TYPE_2__ {int /*<<< orphan*/  net_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 unsigned int UINT_MAX ; 
 struct page* FUNC1 (struct drbd_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  drbd_pp_wait ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net_conf* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

struct page *FUNC13(struct drbd_peer_device *peer_device, unsigned int number,
			      bool retry)
{
	struct drbd_device *device = peer_device->device;
	struct page *page = NULL;
	struct net_conf *nc;
	FUNC0(wait);
	unsigned int mxb;

	FUNC9();
	nc = FUNC8(peer_device->connection->net_conf);
	mxb = nc ? nc->max_buffers : 1000000;
	FUNC10();

	if (FUNC3(&device->pp_in_use) < mxb)
		page = FUNC1(device, number);

	/* Try to keep the fast path fast, but occasionally we need
	 * to reclaim the pages we lended to the network stack. */
	if (page && FUNC3(&device->pp_in_use_by_net) > 512)
		FUNC4(device);

	while (page == NULL) {
		FUNC7(&drbd_pp_wait, &wait, TASK_INTERRUPTIBLE);

		FUNC4(device);

		if (FUNC3(&device->pp_in_use) < mxb) {
			page = FUNC1(device, number);
			if (page)
				break;
		}

		if (!retry)
			break;

		if (FUNC12(current)) {
			FUNC5(device, "drbd_alloc_pages interrupted!\n");
			break;
		}

		if (FUNC11(HZ/10) == 0)
			mxb = UINT_MAX;
	}
	FUNC6(&drbd_pp_wait, &wait);

	if (page)
		FUNC2(number, &device->pp_in_use);
	return page;
}