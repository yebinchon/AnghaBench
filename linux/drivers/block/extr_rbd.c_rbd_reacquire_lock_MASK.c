#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rbd_device {int /*<<< orphan*/  lock_dwork; int /*<<< orphan*/  task_wq; int /*<<< orphan*/  lock_cookie; int /*<<< orphan*/  header_oloc; int /*<<< orphan*/  header_oid; TYPE_2__* rbd_client; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CLS_LOCK_EXCLUSIVE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RBD_LOCK_NAME ; 
 int /*<<< orphan*/  RBD_LOCK_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct rbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_device*) ; 
 int FUNC2 (struct ceph_osd_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rbd_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rbd_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rbd_device *rbd_dev)
{
	struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
	char cookie[32];
	int ret;

	if (!FUNC5(rbd_dev))
		return;

	FUNC3(rbd_dev, cookie);
	ret = FUNC2(osdc, &rbd_dev->header_oid,
				  &rbd_dev->header_oloc, RBD_LOCK_NAME,
				  CEPH_CLS_LOCK_EXCLUSIVE, rbd_dev->lock_cookie,
				  RBD_LOCK_TAG, cookie);
	if (ret) {
		if (ret != -EOPNOTSUPP)
			FUNC6(rbd_dev, "failed to update lock cookie: %d",
				 ret);

		/*
		 * Lock cookie cannot be updated on older OSDs, so do
		 * a manual release and queue an acquire.
		 */
		FUNC1(rbd_dev);
		FUNC4(rbd_dev->task_wq, &rbd_dev->lock_dwork, 0);
	} else {
		FUNC0(rbd_dev, cookie);
		FUNC7(rbd_dev, 0);
	}
}