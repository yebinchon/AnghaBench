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
struct request {int dummy; } ;
struct rbd_obj_request {struct rbd_img_request* img_request; } ;
struct rbd_img_request {struct request* rq; struct rbd_obj_request* obj_request; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_REQ_CHILD ; 
 int /*<<< orphan*/  FUNC0 (struct rbd_img_request*,int*) ; 
 scalar_t__ FUNC1 (struct rbd_obj_request*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rbd_img_request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rbd_img_request *img_req, int result)
{
again:
	if (!FUNC0(img_req, &result))
		return;

	if (FUNC5(IMG_REQ_CHILD, &img_req->flags)) {
		struct rbd_obj_request *obj_req = img_req->obj_request;

		FUNC4(img_req);
		if (FUNC1(obj_req, &result)) {
			img_req = obj_req->img_request;
			goto again;
		}
	} else {
		struct request *rq = img_req->rq;

		FUNC4(img_req);
		FUNC2(rq, FUNC3(result));
	}
}