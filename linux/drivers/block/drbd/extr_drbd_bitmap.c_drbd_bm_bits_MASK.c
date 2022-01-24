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
struct drbd_bitmap {unsigned long bm_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_bitmap*) ; 

unsigned long FUNC1(struct drbd_device *device)
{
	struct drbd_bitmap *b = device->bitmap;
	if (!FUNC0(b))
		return 0;

	return b->bm_bits;
}