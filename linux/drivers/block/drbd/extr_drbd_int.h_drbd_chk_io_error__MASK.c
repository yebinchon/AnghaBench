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
struct drbd_device {TYPE_1__* resource; } ;
typedef  enum drbd_force_detach_flags { ____Placeholder_drbd_force_detach_flags } drbd_force_detach_flags ;
struct TYPE_2__ {int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct drbd_device *device,
	int error, enum drbd_force_detach_flags forcedetach, const char *where)
{
	if (error) {
		unsigned long flags;
		FUNC1(&device->resource->req_lock, flags);
		FUNC0(device, forcedetach, where);
		FUNC2(&device->resource->req_lock, flags);
	}
}