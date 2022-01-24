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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  oe_len; int /*<<< orphan*/  oe_off; } ;
struct rbd_obj_request {int flags; TYPE_1__ ex; scalar_t__ num_img_extents; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_OP_CREATE ; 
 int /*<<< orphan*/  CEPH_OSD_OP_DELETE ; 
 scalar_t__ CEPH_OSD_OP_TRUNCATE ; 
 int RBD_OBJ_FLAG_COPYUP_ENABLED ; 
 int RBD_OBJ_FLAG_DELETION ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_osd_request*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct rbd_obj_request*) ; 
 scalar_t__ FUNC4 (struct rbd_obj_request*) ; 

__attribute__((used)) static void FUNC5(struct ceph_osd_request *osd_req,
					int which)
{
	struct rbd_obj_request *obj_req = osd_req->r_priv;
	u16 opcode;

	if (FUNC3(obj_req)) {
		if (obj_req->num_img_extents) {
			if (!(obj_req->flags & RBD_OBJ_FLAG_COPYUP_ENABLED))
				FUNC1(osd_req, which++,
						CEPH_OSD_OP_CREATE, 0);
			opcode = CEPH_OSD_OP_TRUNCATE;
		} else {
			FUNC2(obj_req->flags & RBD_OBJ_FLAG_DELETION);
			FUNC1(osd_req, which++,
					CEPH_OSD_OP_DELETE, 0);
			opcode = 0;
		}
	} else {
		opcode = FUNC4(obj_req);
	}

	if (opcode)
		FUNC0(osd_req, which, opcode,
				       obj_req->ex.oe_off, obj_req->ex.oe_len,
				       0, 0);
}