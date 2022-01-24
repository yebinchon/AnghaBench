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
struct rb_root {int dummy; } ;
struct drbd_interval {scalar_t__ waiting; } ;
struct drbd_request {struct drbd_interval i; struct drbd_device* device; } ;
struct drbd_device {int /*<<< orphan*/  misc_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_root*,struct drbd_interval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rb_root *root,
					 struct drbd_request *req)
{
	struct drbd_device *device = req->device;
	struct drbd_interval *i = &req->i;

	FUNC0(root, i);

	/* Wake up any processes waiting for this request to complete.  */
	if (i->waiting)
		FUNC1(&device->misc_wait);
}