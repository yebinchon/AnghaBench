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
typedef  union drbd_state {int dummy; } drbd_state ;
struct drbd_device {TYPE_1__* resource; int /*<<< orphan*/  flags; } ;
typedef  enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
struct TYPE_4__ {int /*<<< orphan*/  connection; } ;
struct TYPE_3__ {int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_ST_CHG_FAIL ; 
 int /*<<< orphan*/  CL_ST_CHG_SUCCESS ; 
 int SS_CW_FAILED_BY_PEER ; 
 int SS_CW_NO_NEED ; 
 int SS_CW_SUCCESS ; 
 int SS_SUCCESS ; 
 int SS_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (union drbd_state,union drbd_state,union drbd_state) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,union drbd_state,union drbd_state) ; 
 union drbd_state FUNC2 (struct drbd_device*) ; 
 TYPE_2__* FUNC3 (struct drbd_device*) ; 
 int FUNC4 (union drbd_state,union drbd_state,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drbd_device*,union drbd_state) ; 
 int FUNC6 (union drbd_state,union drbd_state) ; 
 union drbd_state FUNC7 (struct drbd_device*,union drbd_state,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum drbd_state_rv
FUNC11(struct drbd_device *device, union drbd_state mask,
	     union drbd_state val)
{
	union drbd_state os, ns;
	unsigned long flags;
	enum drbd_state_rv rv;

	if (FUNC10(CL_ST_CHG_SUCCESS, &device->flags))
		return SS_CW_SUCCESS;

	if (FUNC10(CL_ST_CHG_FAIL, &device->flags))
		return SS_CW_FAILED_BY_PEER;

	FUNC8(&device->resource->req_lock, flags);
	os = FUNC2(device);
	ns = FUNC7(device, os, FUNC0(os, mask, val), NULL);
	rv = FUNC6(os, ns);
	if (rv >= SS_SUCCESS)
		rv = SS_UNKNOWN_ERROR;  /* cont waiting, otherwise fail. */

	if (!FUNC1(device, os, ns))
		rv = SS_CW_NO_NEED;
	if (rv == SS_UNKNOWN_ERROR) {
		rv = FUNC5(device, ns);
		if (rv >= SS_SUCCESS) {
			rv = FUNC4(os, ns, FUNC3(device)->connection);
			if (rv >= SS_SUCCESS)
				rv = SS_UNKNOWN_ERROR; /* cont waiting, otherwise fail. */
		}
	}
	FUNC9(&device->resource->req_lock, flags);

	return rv;
}