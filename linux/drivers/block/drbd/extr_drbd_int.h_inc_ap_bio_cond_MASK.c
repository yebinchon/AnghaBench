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
struct drbd_device {TYPE_1__* resource; int /*<<< orphan*/  ap_bio_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC4(struct drbd_device *device)
{
	bool rv = false;

	FUNC2(&device->resource->req_lock);
	rv = FUNC1(device);
	if (rv)
		FUNC0(&device->ap_bio_cnt);
	FUNC3(&device->resource->req_lock);

	return rv;
}