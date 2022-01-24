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
struct drbd_bitmap {TYPE_1__* bm_task; scalar_t__ bm_why; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_ratelimit_state ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct drbd_device *device, const char *func)
{
	struct drbd_bitmap *b = device->bitmap;
	if (!FUNC0(&drbd_ratelimit_state))
		return;
	FUNC1(device, "FIXME %s[%d] in %s, bitmap locked for '%s' by %s[%d]\n",
		 current->comm, FUNC2(current),
		 func, b->bm_why ?: "?",
		 b->bm_task->comm, FUNC2(b->bm_task));
}