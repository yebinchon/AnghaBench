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
struct drbd_device {int dummy; } ;
typedef  enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;

/* Variables and functions */
 int SS_IN_TRANSIENT_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,char*,union drbd_state) ; 

void FUNC3(struct drbd_device *device, union drbd_state os,
	          union drbd_state ns, enum drbd_state_rv err)
{
	if (err == SS_IN_TRANSIENT_STATE)
		return;
	FUNC0(device, "State change failed: %s\n", FUNC1(err));
	FUNC2(device, " state", os);
	FUNC2(device, "wanted", ns);
}