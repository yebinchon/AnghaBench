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
struct drbd_bitmap {int /*<<< orphan*/  bm_lock; scalar_t__ bm_set; int /*<<< orphan*/  bm_words; struct drbd_bitmap* bm_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_bitmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drbd_device *device)
{
	struct drbd_bitmap *b = device->bitmap;
	if (!FUNC1(b))
		return;
	if (!FUNC1(b->bm_pages))
		return;

	FUNC2(&b->bm_lock);
	FUNC0(b, 0, 0, b->bm_words);
	b->bm_set = 0;
	FUNC3(&b->bm_lock);
}