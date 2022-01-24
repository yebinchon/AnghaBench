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
typedef  void* u8 ;
typedef  scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ oe_objno; } ;
struct rbd_obj_request {TYPE_2__ ex; TYPE_1__* img_request; } ;
struct rbd_device {int /*<<< orphan*/  object_map_lock; } ;
struct ceph_osd_request {int r_result; int r_num_ops; } ;
struct ceph_osd_data {scalar_t__ type; int /*<<< orphan*/ * pages; } ;
struct TYPE_3__ {struct rbd_device* rbd_dev; } ;

/* Variables and functions */
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ; 
 void* OBJECT_EXISTS ; 
 void* OBJECT_EXISTS_CLEAN ; 
 void* FUNC0 (struct rbd_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_device*,scalar_t__,void*) ; 
 scalar_t__ FUNC2 (void**) ; 
 void* FUNC3 (void**) ; 
 int /*<<< orphan*/  cls ; 
 struct ceph_osd_data* FUNC4 (struct ceph_osd_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  request_data ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct rbd_obj_request *obj_req,
					struct ceph_osd_request *osd_req)
{
	struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
	struct ceph_osd_data *osd_data;
	u64 objno;
	u8 state, new_state, current_state;
	bool has_current_state;
	void *p;

	if (osd_req->r_result)
		return osd_req->r_result;

	/*
	 * Nothing to do for a snapshot object map.
	 */
	if (osd_req->r_num_ops == 1)
		return 0;

	/*
	 * Update in-memory HEAD object map.
	 */
	FUNC6(osd_req->r_num_ops == 2);
	osd_data = FUNC4(osd_req, 1, cls, request_data);
	FUNC6(osd_data->type == CEPH_OSD_DATA_TYPE_PAGES);

	p = FUNC5(osd_data->pages[0]);
	objno = FUNC2(&p);
	FUNC6(objno == obj_req->ex.oe_objno);
	FUNC6(FUNC2(&p) == objno + 1);
	new_state = FUNC3(&p);
	has_current_state = FUNC3(&p);
	if (has_current_state)
		current_state = FUNC3(&p);

	FUNC7(&rbd_dev->object_map_lock);
	state = FUNC0(rbd_dev, objno);
	if (!has_current_state || current_state == state ||
	    (current_state == OBJECT_EXISTS && state == OBJECT_EXISTS_CLEAN))
		FUNC1(rbd_dev, objno, new_state);
	FUNC8(&rbd_dev->object_map_lock);

	return 0;
}