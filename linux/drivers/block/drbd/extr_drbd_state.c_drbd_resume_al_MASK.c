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
struct drbd_device {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct drbd_device *device)
{
	if (FUNC1(AL_SUSPENDED, &device->flags))
		FUNC0(device, "Resumed AL updates\n");
}