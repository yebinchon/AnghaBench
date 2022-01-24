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
struct seq_file {int dummy; } ;
struct drbd_device {scalar_t__ flush_jif; int /*<<< orphan*/  vnr; int /*<<< orphan*/  minor; int /*<<< orphan*/  flags; TYPE_1__* resource; int /*<<< orphan*/  sync_ee; int /*<<< orphan*/  read_ee; int /*<<< orphan*/  active_ee; } ;
struct TYPE_2__ {int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct drbd_device*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct seq_file *m,
	struct drbd_device *device, unsigned long now)
{
	FUNC3(m, "minor\tvnr\tsector\tsize\trw\tage\tflags\n");
	FUNC4(&device->resource->req_lock);
	FUNC1(m, device, &device->active_ee, now);
	FUNC1(m, device, &device->read_ee, now);
	FUNC1(m, device, &device->sync_ee, now);
	FUNC5(&device->resource->req_lock);
	if (FUNC6(FLUSH_PENDING, &device->flags)) {
		FUNC2(m, "%u\t%u\t-\t-\tF\t%u\tflush\n",
			device->minor, device->vnr,
			FUNC0(now - device->flush_jif));
	}
}