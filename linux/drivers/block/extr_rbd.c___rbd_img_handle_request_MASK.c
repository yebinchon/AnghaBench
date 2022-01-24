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
struct rbd_img_request {int /*<<< orphan*/  op_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  state_mutex; struct rbd_device* rbd_dev; } ;
struct rbd_device {int /*<<< orphan*/  lock_rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_REQ_CHILD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rbd_img_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct rbd_img_request*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rbd_img_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct rbd_device*,char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(struct rbd_img_request *img_req,
				     int *result)
{
	struct rbd_device *rbd_dev = img_req->rbd_dev;
	bool done;

	if (FUNC3(img_req)) {
		FUNC0(&rbd_dev->lock_rwsem);
		FUNC1(&img_req->state_mutex);
		done = FUNC6(img_req, result);
		if (done)
			FUNC7(img_req);
		FUNC2(&img_req->state_mutex);
		FUNC10(&rbd_dev->lock_rwsem);
	} else {
		FUNC1(&img_req->state_mutex);
		done = FUNC6(img_req, result);
		FUNC2(&img_req->state_mutex);
	}

	if (done && *result) {
		FUNC5(*result < 0);
		FUNC8(rbd_dev, "%s%s result %d",
		      FUNC9(IMG_REQ_CHILD, &img_req->flags) ? "child " : "",
		      FUNC4(img_req->op_type), *result);
	}
	return done;
}