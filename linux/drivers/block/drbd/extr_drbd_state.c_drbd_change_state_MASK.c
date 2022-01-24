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
typedef  union drbd_state {int dummy; } drbd_state ;
struct drbd_device {TYPE_1__* resource; } ;
typedef  enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef  enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;
struct TYPE_2__ {int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int FUNC0 (struct drbd_device*,union drbd_state,int,int /*<<< orphan*/ *) ; 
 union drbd_state FUNC1 (int /*<<< orphan*/ ,union drbd_state,union drbd_state) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

enum drbd_state_rv
FUNC5(struct drbd_device *device, enum chg_state_flags f,
		  union drbd_state mask, union drbd_state val)
{
	unsigned long flags;
	union drbd_state ns;
	enum drbd_state_rv rv;

	FUNC3(&device->resource->req_lock, flags);
	ns = FUNC1(FUNC2(device), mask, val);
	rv = FUNC0(device, ns, f, NULL);
	FUNC4(&device->resource->req_lock, flags);

	return rv;
}