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
struct seq_file {struct drbd_device* private; } ;
struct drbd_device {int /*<<< orphan*/  resync; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FAILED ; 
 scalar_t__ FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*) ; 
 int /*<<< orphan*/  resync_dump_detail ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *ignored)
{
	struct drbd_device *device = m->private;

	/* BUMP me if you change the file format/content/presentation */
	FUNC4(m, "v: %u\n\n", 0);

	if (FUNC0(device, D_FAILED)) {
		FUNC2(m, device->resync);
		FUNC1(m, device->resync, "rs_left flags", resync_dump_detail);
		FUNC3(device);
	}
	return 0;
}