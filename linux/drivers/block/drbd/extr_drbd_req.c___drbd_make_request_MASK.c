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
struct drbd_request {int dummy; } ;
struct drbd_device {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drbd_request*) ; 
 struct drbd_request* FUNC1 (struct drbd_device*,struct bio*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,struct drbd_request*) ; 

void FUNC3(struct drbd_device *device, struct bio *bio, unsigned long start_jif)
{
	struct drbd_request *req = FUNC1(device, bio, start_jif);
	if (FUNC0(req))
		return;
	FUNC2(device, req);
}