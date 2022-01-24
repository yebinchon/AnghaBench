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
typedef  union drbd_state {int dummy; } drbd_state ;
struct drbd_device {int /*<<< orphan*/  state_wait; } ;
typedef  enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef  enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;

/* Variables and functions */
 int SS_IN_TRANSIENT_STATE ; 
 int FUNC0 (struct drbd_device*,union drbd_state,union drbd_state,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

enum drbd_state_rv
FUNC2(struct drbd_device *device, union drbd_state mask,
		    union drbd_state val, enum chg_state_flags f)
{
	enum drbd_state_rv rv;

	FUNC1(device->state_wait,
		   (rv = FUNC0(device, mask, val, f)) != SS_IN_TRANSIENT_STATE);

	return rv;
}