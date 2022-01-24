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
struct drbd_bitmap {unsigned long bm_set; int /*<<< orphan*/  bm_lock; struct drbd_bitmap* bm_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC3(struct drbd_device *device)
{
	struct drbd_bitmap *b = device->bitmap;
	unsigned long s;
	unsigned long flags;

	if (!FUNC0(b))
		return 0;
	if (!FUNC0(b->bm_pages))
		return 0;

	FUNC1(&b->bm_lock, flags);
	s = b->bm_set;
	FUNC2(&b->bm_lock, flags);

	return s;
}