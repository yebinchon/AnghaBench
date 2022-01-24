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
struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {int /*<<< orphan*/  bm_io_wait; int /*<<< orphan*/  bm_change; int /*<<< orphan*/  bm_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct drbd_bitmap* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drbd_device *device)
{
	struct drbd_bitmap *b = device->bitmap;
	FUNC0(b != NULL);
	b = FUNC2(sizeof(struct drbd_bitmap), GFP_KERNEL);
	if (!b)
		return -ENOMEM;
	FUNC4(&b->bm_lock);
	FUNC3(&b->bm_change);
	FUNC1(&b->bm_io_wait);

	device->bitmap = b;

	return 0;
}