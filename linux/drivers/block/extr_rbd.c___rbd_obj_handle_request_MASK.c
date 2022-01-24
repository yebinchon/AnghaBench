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
struct TYPE_2__ {int /*<<< orphan*/  oe_len; int /*<<< orphan*/  oe_off; int /*<<< orphan*/  oe_objno; } ;
struct rbd_obj_request {TYPE_1__ ex; int /*<<< orphan*/  state_mutex; struct rbd_img_request* img_request; } ;
struct rbd_img_request {int /*<<< orphan*/  op_type; struct rbd_device* rbd_dev; } ;
struct rbd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rbd_img_request*) ; 
 int FUNC5 (struct rbd_obj_request*,int*) ; 
 int FUNC6 (struct rbd_obj_request*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rbd_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC8(struct rbd_obj_request *obj_req,
				     int *result)
{
	struct rbd_img_request *img_req = obj_req->img_request;
	struct rbd_device *rbd_dev = img_req->rbd_dev;
	bool done;

	FUNC0(&obj_req->state_mutex);
	if (!FUNC4(img_req))
		done = FUNC5(obj_req, result);
	else
		done = FUNC6(obj_req, result);
	FUNC1(&obj_req->state_mutex);

	if (done && *result) {
		FUNC3(*result < 0);
		FUNC7(rbd_dev, "%s at objno %llu %llu~%llu result %d",
			 FUNC2(img_req->op_type), obj_req->ex.oe_objno,
			 obj_req->ex.oe_off, obj_req->ex.oe_len, *result);
	}
	return done;
}