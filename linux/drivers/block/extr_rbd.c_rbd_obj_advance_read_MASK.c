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
typedef  int u32 ;
struct TYPE_4__ {int oe_len; } ;
struct rbd_obj_request {int read_state; TYPE_2__ ex; int /*<<< orphan*/  num_img_extents; TYPE_1__* img_request; } ;
struct rbd_device {int /*<<< orphan*/  parent_overlap; } ;
struct TYPE_3__ {struct rbd_device* rbd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOENT ; 
#define  RBD_OBJ_READ_OBJECT 130 
#define  RBD_OBJ_READ_PARENT 129 
#define  RBD_OBJ_READ_START 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rbd_obj_request*,int) ; 
 int FUNC3 (struct rbd_obj_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct rbd_obj_request*) ; 
 int FUNC5 (struct rbd_obj_request*) ; 
 int FUNC6 (struct rbd_obj_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct rbd_obj_request*,int,int) ; 

__attribute__((used)) static bool FUNC8(struct rbd_obj_request *obj_req, int *result)
{
	struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
	int ret;

again:
	switch (obj_req->read_state) {
	case RBD_OBJ_READ_START:
		FUNC1(!*result);

		if (!FUNC4(obj_req)) {
			*result = -ENOENT;
			obj_req->read_state = RBD_OBJ_READ_OBJECT;
			goto again;
		}

		ret = FUNC6(obj_req);
		if (ret) {
			*result = ret;
			return true;
		}
		obj_req->read_state = RBD_OBJ_READ_OBJECT;
		return false;
	case RBD_OBJ_READ_OBJECT:
		if (*result == -ENOENT && rbd_dev->parent_overlap) {
			/* reverse map this object extent onto the parent */
			ret = FUNC2(obj_req, false);
			if (ret) {
				*result = ret;
				return true;
			}
			if (obj_req->num_img_extents) {
				ret = FUNC5(obj_req);
				if (ret) {
					*result = ret;
					return true;
				}
				obj_req->read_state = RBD_OBJ_READ_PARENT;
				return false;
			}
		}

		/*
		 * -ENOENT means a hole in the image -- zero-fill the entire
		 * length of the request.  A short read also implies zero-fill
		 * to the end of the request.
		 */
		if (*result == -ENOENT) {
			FUNC7(obj_req, 0, obj_req->ex.oe_len);
			*result = 0;
		} else if (*result >= 0) {
			if (*result < obj_req->ex.oe_len)
				FUNC7(obj_req, *result,
						obj_req->ex.oe_len - *result);
			else
				FUNC1(*result == obj_req->ex.oe_len);
			*result = 0;
		}
		return true;
	case RBD_OBJ_READ_PARENT:
		/*
		 * The parent image is read only up to the overlap -- zero-fill
		 * from the overlap to the end of the request.
		 */
		if (!*result) {
			u32 obj_overlap = FUNC3(obj_req);

			if (obj_overlap < obj_req->ex.oe_len)
				FUNC7(obj_req, obj_overlap,
					    obj_req->ex.oe_len - obj_overlap);
		}
		return true;
	default:
		FUNC0();
	}
}