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
struct drbd_bitmap {int /*<<< orphan*/  bm_lock; int /*<<< orphan*/  bm_bits; int /*<<< orphan*/  bm_set; int /*<<< orphan*/  bm_words; struct drbd_bitmap* bm_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_bitmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_bitmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drbd_device *device)
{
	struct drbd_bitmap *b = device->bitmap;
	if (!FUNC2(b))
		return;
	if (!FUNC2(b->bm_pages))
		return;

	FUNC3(&b->bm_lock);
	FUNC1(b, 0, 0xff, b->bm_words);
	(void)FUNC0(b);
	b->bm_set = b->bm_bits;
	FUNC4(&b->bm_lock);
}