#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct rbd_device {int /*<<< orphan*/  header_oloc; int /*<<< orphan*/  header_oid; TYPE_1__* rbd_client; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  cookie; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct ceph_locker {TYPE_3__ id; TYPE_2__ info; } ;
struct ceph_client {int /*<<< orphan*/  osdc; int /*<<< orphan*/  monc; } ;
struct TYPE_4__ {struct ceph_client* client; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBD_LOCK_NAME ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_locker*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rbd_device*,struct ceph_locker*) ; 
 int FUNC5 (struct rbd_device*,struct ceph_locker**,scalar_t__*) ; 
 int FUNC6 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct rbd_device*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC8(struct rbd_device *rbd_dev)
{
	struct ceph_client *client = rbd_dev->rbd_client->client;
	struct ceph_locker *lockers;
	u32 num_lockers;
	int ret;

	for (;;) {
		ret = FUNC6(rbd_dev);
		if (ret != -EBUSY)
			return ret;

		/* determine if the current lock holder is still alive */
		ret = FUNC5(rbd_dev, &lockers, &num_lockers);
		if (ret)
			return ret;

		if (num_lockers == 0)
			goto again;

		ret = FUNC4(rbd_dev, lockers);
		if (ret)
			goto out; /* request lock or error */

		FUNC7(rbd_dev, "breaking header lock owned by %s%llu",
			 FUNC0(lockers[0].id.name));

		ret = FUNC3(&client->monc,
					      &lockers[0].info.addr);
		if (ret) {
			FUNC7(rbd_dev, "blacklist of %s%llu failed: %d",
				 FUNC0(lockers[0].id.name), ret);
			goto out;
		}

		ret = FUNC1(&client->osdc, &rbd_dev->header_oid,
					  &rbd_dev->header_oloc, RBD_LOCK_NAME,
					  lockers[0].id.cookie,
					  &lockers[0].id.name);
		if (ret && ret != -ENOENT)
			goto out;

again:
		FUNC2(lockers, num_lockers);
	}

out:
	FUNC2(lockers, num_lockers);
	return ret;
}