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
typedef  int /*<<< orphan*/  u64 ;
struct rbd_device {int /*<<< orphan*/  header_oloc; int /*<<< orphan*/  header_oid; TYPE_2__* rbd_client; } ;
struct ceph_osd_client {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_osd_client osdc; } ;

/* Variables and functions */
 int CEPH_ENCODING_START_BLK_LEN ; 
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ceph_osd_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_device*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct rbd_device *rbd_dev,
				     u64 notify_id, u64 cookie, s32 *result)
{
	struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
	char buf[4 + CEPH_ENCODING_START_BLK_LEN];
	int buf_size = sizeof(buf);
	int ret;

	if (result) {
		void *p = buf;

		/* encode ResponseMessage */
		FUNC2(&p, 1, 1,
				    buf_size - CEPH_ENCODING_START_BLK_LEN);
		FUNC0(&p, *result);
	} else {
		buf_size = 0;
	}

	ret = FUNC1(osdc, &rbd_dev->header_oid,
				   &rbd_dev->header_oloc, notify_id, cookie,
				   buf, buf_size);
	if (ret)
		FUNC3(rbd_dev, "acknowledge_notify failed: %d", ret);
}