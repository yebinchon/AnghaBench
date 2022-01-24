#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int /*<<< orphan*/ * queue; } ;
struct TYPE_4__ {TYPE_1__* type; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  trackbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int /*<<< orphan*/  FD_NODRIVE ; 
 int FLOPPY_MAX_SECTORS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct gendisk* FUNC1 (int) ; 
 int /*<<< orphan*/  amiflop_mq_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gendisk*) ; 
 TYPE_2__* unit ; 

__attribute__((used)) static struct gendisk *FUNC7(int drive)
{
	struct gendisk *disk;

	disk = FUNC1(1);
	if (!disk)
		goto out;

	disk->queue = FUNC4(&unit[drive].tag_set, &amiflop_mq_ops,
						2, BLK_MQ_F_SHOULD_MERGE);
	if (FUNC0(disk->queue)) {
		disk->queue = NULL;
		goto out_put_disk;
	}

	unit[drive].trackbuf = FUNC5(FLOPPY_MAX_SECTORS * 512, GFP_KERNEL);
	if (!unit[drive].trackbuf)
		goto out_cleanup_queue;

	return disk;

out_cleanup_queue:
	FUNC2(disk->queue);
	disk->queue = NULL;
	FUNC3(&unit[drive].tag_set);
out_put_disk:
	FUNC6(disk);
out:
	unit[drive].type->code = FD_NODRIVE;
	return NULL;
}