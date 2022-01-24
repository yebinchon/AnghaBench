#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drbd_device {TYPE_1__* bitmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  bm_pages; int /*<<< orphan*/  bm_number_of_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(struct drbd_device *device)
{
	if (!FUNC2(device->bitmap))
		return;
	FUNC0(device->bitmap->bm_pages, device->bitmap->bm_number_of_pages);
	FUNC1(device->bitmap->bm_pages);
	FUNC3(device->bitmap);
	device->bitmap = NULL;
}