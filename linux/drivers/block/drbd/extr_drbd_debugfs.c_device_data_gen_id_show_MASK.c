#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct drbd_device* private; } ;
struct drbd_md {int /*<<< orphan*/  uuid_lock; int /*<<< orphan*/ * uuid; } ;
struct drbd_device {TYPE_1__* ldev; } ;
typedef  enum drbd_uuid_index { ____Placeholder_drbd_uuid_index } drbd_uuid_index ;
struct TYPE_2__ {struct drbd_md md; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FAILED ; 
 int ENODEV ; 
 int UI_CURRENT ; 
 int UI_HISTORY_END ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *ignored)
{
	struct drbd_device *device = m->private;
	struct drbd_md *md;
	enum drbd_uuid_index idx;

	if (!FUNC0(device, D_FAILED))
		return -ENODEV;

	md = &device->ldev->md;
	FUNC3(&md->uuid_lock);
	for (idx = UI_CURRENT; idx <= UI_HISTORY_END; idx++) {
		FUNC2(m, "0x%016llX\n", md->uuid[idx]);
	}
	FUNC4(&md->uuid_lock);
	FUNC1(device);
	return 0;
}