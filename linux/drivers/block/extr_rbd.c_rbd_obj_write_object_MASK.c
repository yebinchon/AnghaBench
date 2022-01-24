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
struct rbd_obj_request {int flags; } ;
struct ceph_osd_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct ceph_osd_request*) ; 
 int FUNC1 (struct ceph_osd_request*) ; 
 int RBD_OBJ_FLAG_COPYUP_ENABLED ; 
 int FUNC2 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rbd_obj_request*) ; 
 struct ceph_osd_request* FUNC4 (struct rbd_obj_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_request*) ; 
 int FUNC6 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_osd_request*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_osd_request*) ; 

__attribute__((used)) static int FUNC9(struct rbd_obj_request *obj_req)
{
	struct ceph_osd_request *osd_req;
	int num_ops = FUNC3(obj_req);
	int which = 0;
	int ret;

	if (obj_req->flags & RBD_OBJ_FLAG_COPYUP_ENABLED)
		num_ops++; /* stat */

	osd_req = FUNC4(obj_req, num_ops);
	if (FUNC0(osd_req))
		return FUNC1(osd_req);

	if (obj_req->flags & RBD_OBJ_FLAG_COPYUP_ENABLED) {
		ret = FUNC6(osd_req, which++);
		if (ret)
			return ret;
	}

	FUNC7(osd_req, which);
	FUNC5(osd_req);

	ret = FUNC2(osd_req, GFP_NOIO);
	if (ret)
		return ret;

	FUNC8(osd_req);
	return 0;
}