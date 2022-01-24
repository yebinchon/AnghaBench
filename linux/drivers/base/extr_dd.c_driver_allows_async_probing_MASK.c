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
struct device_driver {int probe_type; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  PROBE_FORCE_SYNCHRONOUS 129 
#define  PROBE_PREFER_ASYNCHRONOUS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(struct device_driver *drv)
{
	switch (drv->probe_type) {
	case PROBE_PREFER_ASYNCHRONOUS:
		return true;

	case PROBE_FORCE_SYNCHRONOUS:
		return false;

	default:
		if (FUNC0(drv->name))
			return true;

		if (FUNC1(drv->owner))
			return true;

		return false;
	}
}