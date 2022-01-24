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
struct rbd_obj_request {int /*<<< orphan*/  write_state; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RBD_OBJ_FLAG_COPYUP_ENABLED ; 
 int /*<<< orphan*/  RBD_OBJ_WRITE_START ; 
 int FUNC0 (struct rbd_obj_request*,int) ; 
 scalar_t__ FUNC1 (struct rbd_obj_request*) ; 

__attribute__((used)) static int FUNC2(struct rbd_obj_request *obj_req)
{
	int ret;

	/* reverse map the entire object onto the parent */
	ret = FUNC0(obj_req, true);
	if (ret)
		return ret;

	if (FUNC1(obj_req))
		obj_req->flags |= RBD_OBJ_FLAG_COPYUP_ENABLED;

	obj_req->write_state = RBD_OBJ_WRITE_START;
	return 0;
}