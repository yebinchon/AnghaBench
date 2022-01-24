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
struct TYPE_2__ {int /*<<< orphan*/  oe_len; int /*<<< orphan*/  oe_off; } ;
struct rbd_obj_request {TYPE_1__ ex; } ;
struct ceph_osd_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_OP_READ ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct ceph_osd_request*) ; 
 int FUNC1 (struct ceph_osd_request*) ; 
 struct ceph_osd_request* FUNC2 (struct rbd_obj_request*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_osd_request*) ; 

__attribute__((used)) static int FUNC8(struct rbd_obj_request *obj_req)
{
	struct ceph_osd_request *osd_req;
	int ret;

	osd_req = FUNC2(obj_req, NULL, 1);
	if (FUNC0(osd_req))
		return FUNC1(osd_req);

	FUNC4(osd_req, 0, CEPH_OSD_OP_READ,
			       obj_req->ex.oe_off, obj_req->ex.oe_len, 0, 0);
	FUNC6(osd_req, 0);
	FUNC5(osd_req);

	ret = FUNC3(osd_req, GFP_NOIO);
	if (ret)
		return ret;

	FUNC7(osd_req);
	return 0;
}