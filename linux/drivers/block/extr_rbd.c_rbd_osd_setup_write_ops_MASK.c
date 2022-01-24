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
struct rbd_obj_request {TYPE_1__* img_request; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;
struct TYPE_2__ {int op_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  OBJ_OP_DISCARD 130 
#define  OBJ_OP_WRITE 129 
#define  OBJ_OP_ZEROOUT 128 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd_request*,int) ; 

__attribute__((used)) static void FUNC4(struct ceph_osd_request *osd_req,
				    int which)
{
	struct rbd_obj_request *obj_req = osd_req->r_priv;

	switch (obj_req->img_request->op_type) {
	case OBJ_OP_WRITE:
		FUNC2(osd_req, which);
		break;
	case OBJ_OP_DISCARD:
		FUNC1(osd_req, which);
		break;
	case OBJ_OP_ZEROOUT:
		FUNC3(osd_req, which);
		break;
	default:
		FUNC0();
	}
}