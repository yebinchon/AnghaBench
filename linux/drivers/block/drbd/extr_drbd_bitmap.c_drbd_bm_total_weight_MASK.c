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
struct drbd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_NEGOTIATING ; 
 unsigned long FUNC0 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*) ; 

unsigned long FUNC3(struct drbd_device *device)
{
	unsigned long s;
	/* if I don't have a disk, I don't know about out-of-sync status */
	if (!FUNC1(device, D_NEGOTIATING))
		return 0;
	s = FUNC0(device);
	FUNC2(device);
	return s;
}