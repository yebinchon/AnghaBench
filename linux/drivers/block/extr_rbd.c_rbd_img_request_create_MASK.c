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
struct rbd_img_request {int op_type; int /*<<< orphan*/  kref; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  object_extents; int /*<<< orphan*/  lock_item; struct ceph_snap_context* snapc; int /*<<< orphan*/  snap_id; struct rbd_device* rbd_dev; } ;
struct rbd_device {TYPE_1__* spec; } ;
struct ceph_snap_context {int dummy; } ;
typedef  enum obj_operation_type { ____Placeholder_obj_operation_type } obj_operation_type ;
struct TYPE_2__ {int /*<<< orphan*/  snap_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_img_request*) ; 
 struct rbd_img_request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rbd_img_request*) ; 
 int /*<<< orphan*/  rbd_img_request_cache ; 

__attribute__((used)) static struct rbd_img_request *FUNC7(
					struct rbd_device *rbd_dev,
					enum obj_operation_type op_type,
					struct ceph_snap_context *snapc)
{
	struct rbd_img_request *img_request;

	img_request = FUNC2(rbd_img_request_cache, GFP_NOIO);
	if (!img_request)
		return NULL;

	img_request->rbd_dev = rbd_dev;
	img_request->op_type = op_type;
	if (!FUNC6(img_request))
		img_request->snap_id = rbd_dev->spec->snap_id;
	else
		img_request->snapc = snapc;

	if (FUNC5(rbd_dev))
		FUNC1(img_request);

	FUNC0(&img_request->lock_item);
	FUNC0(&img_request->object_extents);
	FUNC4(&img_request->state_mutex);
	FUNC3(&img_request->kref);

	return img_request;
}