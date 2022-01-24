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
struct rbd_obj_request {int write_state; int flags; int /*<<< orphan*/  copyup_state; TYPE_1__* img_request; } ;
struct rbd_device {int dummy; } ;
struct TYPE_2__ {struct rbd_device* rbd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOENT ; 
 int /*<<< orphan*/  RBD_OBJ_COPYUP_START ; 
 int RBD_OBJ_FLAG_COPYUP_ENABLED ; 
 int RBD_OBJ_FLAG_DELETION ; 
#define  RBD_OBJ_WRITE_COPYUP 133 
#define  RBD_OBJ_WRITE_OBJECT 132 
#define  RBD_OBJ_WRITE_POST_OBJECT_MAP 131 
#define  RBD_OBJ_WRITE_PRE_OBJECT_MAP 130 
#define  RBD_OBJ_WRITE_START 129 
#define  __RBD_OBJ_WRITE_COPYUP 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_obj_request*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_obj_request*) ; 
 int FUNC4 (struct rbd_obj_request*) ; 
 int FUNC5 (struct rbd_obj_request*) ; 
 int FUNC6 (struct rbd_obj_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct rbd_device*,char*,int) ; 

__attribute__((used)) static bool FUNC8(struct rbd_obj_request *obj_req, int *result)
{
	struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
	int ret;

again:
	switch (obj_req->write_state) {
	case RBD_OBJ_WRITE_START:
		FUNC1(!*result);

		if (FUNC3(obj_req))
			return true;

		ret = FUNC6(obj_req);
		if (ret < 0) {
			*result = ret;
			return true;
		}
		obj_req->write_state = RBD_OBJ_WRITE_PRE_OBJECT_MAP;
		if (ret > 0)
			goto again;
		return false;
	case RBD_OBJ_WRITE_PRE_OBJECT_MAP:
		if (*result) {
			FUNC7(rbd_dev, "pre object map update failed: %d",
				 *result);
			return true;
		}
		ret = FUNC4(obj_req);
		if (ret) {
			*result = ret;
			return true;
		}
		obj_req->write_state = RBD_OBJ_WRITE_OBJECT;
		return false;
	case RBD_OBJ_WRITE_OBJECT:
		if (*result == -ENOENT) {
			if (obj_req->flags & RBD_OBJ_FLAG_COPYUP_ENABLED) {
				*result = 0;
				obj_req->copyup_state = RBD_OBJ_COPYUP_START;
				obj_req->write_state = __RBD_OBJ_WRITE_COPYUP;
				goto again;
			}
			/*
			 * On a non-existent object:
			 *   delete - -ENOENT, truncate/zero - 0
			 */
			if (obj_req->flags & RBD_OBJ_FLAG_DELETION)
				*result = 0;
		}
		if (*result)
			return true;

		obj_req->write_state = RBD_OBJ_WRITE_COPYUP;
		goto again;
	case __RBD_OBJ_WRITE_COPYUP:
		if (!FUNC2(obj_req, result))
			return false;
		/* fall through */
	case RBD_OBJ_WRITE_COPYUP:
		if (*result) {
			FUNC7(rbd_dev, "copyup failed: %d", *result);
			return true;
		}
		ret = FUNC5(obj_req);
		if (ret < 0) {
			*result = ret;
			return true;
		}
		obj_req->write_state = RBD_OBJ_WRITE_POST_OBJECT_MAP;
		if (ret > 0)
			goto again;
		return false;
	case RBD_OBJ_WRITE_POST_OBJECT_MAP:
		if (*result)
			FUNC7(rbd_dev, "post object map update failed: %d",
				 *result);
		return true;
	default:
		FUNC0();
	}
}