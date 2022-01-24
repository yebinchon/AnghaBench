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
struct drbd_interval {int dummy; } ;
struct drbd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*) ; 
 scalar_t__ FUNC1 (struct drbd_device*,struct drbd_interval*) ; 

void FUNC2(struct drbd_device *device, struct drbd_interval *i)
{
	if (FUNC1(device, i))
		FUNC0(device);
}