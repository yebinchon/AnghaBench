#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_8__ {int /*<<< orphan*/  oe_objno; } ;
struct rbd_obj_request {TYPE_4__ ex; int /*<<< orphan*/  osd_reqs; TYPE_1__* img_request; } ;
struct rbd_device {int /*<<< orphan*/  header_oloc; TYPE_3__* rbd_client; } ;
struct ceph_osd_request {int /*<<< orphan*/  r_mtime; int /*<<< orphan*/  r_flags; int /*<<< orphan*/  r_base_oloc; int /*<<< orphan*/  r_base_oid; struct rbd_obj_request* r_priv; int /*<<< orphan*/  r_callback; int /*<<< orphan*/  r_private_item; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_7__ {TYPE_2__* client; } ;
struct TYPE_6__ {struct ceph_osd_client osdc; } ;
struct TYPE_5__ {struct rbd_device* rbd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CLS_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  CEPH_NOSNAP ; 
 int /*<<< orphan*/  CEPH_OSD_FLAG_WRITE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  RBD_LOCK_NAME ; 
 int FUNC0 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 struct ceph_osd_request* FUNC3 (struct ceph_osd_client*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ceph_osd_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  rbd_object_map_callback ; 
 int /*<<< orphan*/  FUNC8 (struct rbd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rbd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rbd_obj_request *obj_req, u64 snap_id,
				 u8 new_state, const u8 *current_state)
{
	struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
	struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
	struct ceph_osd_request *req;
	int num_ops = 1;
	int which = 0;
	int ret;

	if (snap_id == CEPH_NOSNAP) {
		if (!FUNC9(rbd_dev, obj_req->ex.oe_objno, new_state))
			return 1;

		num_ops++; /* assert_locked */
	}

	req = FUNC3(osdc, NULL, num_ops, false, GFP_NOIO);
	if (!req)
		return -ENOMEM;

	FUNC6(&req->r_private_item, &obj_req->osd_reqs);
	req->r_callback = rbd_object_map_callback;
	req->r_priv = obj_req;

	FUNC8(rbd_dev, snap_id, &req->r_base_oid);
	FUNC1(&req->r_base_oloc, &rbd_dev->header_oloc);
	req->r_flags = CEPH_OSD_FLAG_WRITE;
	FUNC5(&req->r_mtime);

	if (snap_id == CEPH_NOSNAP) {
		/*
		 * Protect against possible race conditions during lock
		 * ownership transitions.
		 */
		ret = FUNC0(req, which++, RBD_LOCK_NAME,
					     CEPH_CLS_LOCK_EXCLUSIVE, "", "");
		if (ret)
			return ret;
	}

	ret = FUNC7(req, which, obj_req->ex.oe_objno,
					new_state, current_state);
	if (ret)
		return ret;

	ret = FUNC2(req, GFP_NOIO);
	if (ret)
		return ret;

	FUNC4(osdc, req, false);
	return 0;
}