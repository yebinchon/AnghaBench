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
struct TYPE_5__ {int /*<<< orphan*/  bi_size; } ;
struct TYPE_8__ {TYPE_1__ iter; } ;
struct TYPE_7__ {int /*<<< orphan*/  oe_len; } ;
struct rbd_obj_request {TYPE_4__ bvec_pos; int /*<<< orphan*/  bvec_count; int /*<<< orphan*/  bvec_idx; TYPE_3__ ex; int /*<<< orphan*/  bio_pos; TYPE_2__* img_request; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;
struct TYPE_6__ {int data_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  OBJ_REQUEST_BIO 130 
#define  OBJ_REQUEST_BVECS 129 
#define  OBJ_REQUEST_OWN_BVECS 128 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_request*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ceph_osd_request *osd_req, int which)
{
	struct rbd_obj_request *obj_req = osd_req->r_priv;

	switch (obj_req->img_request->data_type) {
	case OBJ_REQUEST_BIO:
		FUNC1(osd_req, which,
					       &obj_req->bio_pos,
					       obj_req->ex.oe_len);
		break;
	case OBJ_REQUEST_BVECS:
	case OBJ_REQUEST_OWN_BVECS:
		FUNC3(obj_req->bvec_pos.iter.bi_size ==
							obj_req->ex.oe_len);
		FUNC3(obj_req->bvec_idx == obj_req->bvec_count);
		FUNC2(osd_req, which,
						    &obj_req->bvec_pos);
		break;
	default:
		FUNC0();
	}
}