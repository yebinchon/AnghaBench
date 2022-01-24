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
struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {char* bm_why; int bm_flags; TYPE_1__* bm_task; int /*<<< orphan*/  bm_change; } ;
typedef  enum bm_flag { ____Placeholder_bm_flag } bm_flag ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int BM_LOCKED_MASK ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(struct drbd_device *device, char *why, enum bm_flag flags)
{
	struct drbd_bitmap *b = device->bitmap;
	int trylock_failed;

	if (!b) {
		FUNC0(device, "FIXME no bitmap in drbd_bm_lock!?\n");
		return;
	}

	trylock_failed = !FUNC3(&b->bm_change);

	if (trylock_failed) {
		FUNC1(device, "%s[%d] going to '%s' but bitmap already locked for '%s' by %s[%d]\n",
			  current->comm, FUNC4(current),
			  why, b->bm_why ?: "?",
			  b->bm_task->comm, FUNC4(b->bm_task));
		FUNC2(&b->bm_change);
	}
	if (BM_LOCKED_MASK & b->bm_flags)
		FUNC0(device, "FIXME bitmap already locked in bm_lock\n");
	b->bm_flags |= flags & BM_LOCKED_MASK;

	b->bm_why  = why;
	b->bm_task = current;
}