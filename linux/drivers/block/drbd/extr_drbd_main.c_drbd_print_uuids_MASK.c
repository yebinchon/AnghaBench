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
typedef  scalar_t__ u64 ;
struct drbd_device {scalar_t__ ed_uuid; TYPE_2__* ldev; } ;
struct TYPE_3__ {scalar_t__* uuid; } ;
struct TYPE_4__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_NEGOTIATING ; 
 size_t UI_BITMAP ; 
 size_t UI_CURRENT ; 
 size_t UI_HISTORY_END ; 
 size_t UI_HISTORY_START ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,char*,char const*,unsigned long long,...) ; 
 scalar_t__ FUNC1 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*) ; 

void FUNC3(struct drbd_device *device, const char *text)
{
	if (FUNC1(device, D_NEGOTIATING)) {
		u64 *uuid = device->ldev->md.uuid;
		FUNC0(device, "%s %016llX:%016llX:%016llX:%016llX\n",
		     text,
		     (unsigned long long)uuid[UI_CURRENT],
		     (unsigned long long)uuid[UI_BITMAP],
		     (unsigned long long)uuid[UI_HISTORY_START],
		     (unsigned long long)uuid[UI_HISTORY_END]);
		FUNC2(device);
	} else {
		FUNC0(device, "%s effective data uuid: %016llX\n",
				text,
				(unsigned long long)device->ed_uuid);
	}
}