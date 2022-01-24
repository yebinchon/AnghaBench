#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int capacity; scalar_t__ mask; scalar_t__ speed; struct pcd_unit* handle; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * name; } ;
struct pcd_unit {int changed; int /*<<< orphan*/ * name; TYPE_1__ info; scalar_t__ drive; scalar_t__ last_sense; scalar_t__ present; int /*<<< orphan*/  pia; int /*<<< orphan*/ * pi; struct gendisk* disk; int /*<<< orphan*/  rq_list; int /*<<< orphan*/  tag_set; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  events; int /*<<< orphan*/  flags; int /*<<< orphan*/ * fops; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  major; TYPE_2__* queue; } ;
struct TYPE_6__ {struct pcd_unit* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_HIGH ; 
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int /*<<< orphan*/  DISK_EVENT_MEDIA_CHANGE ; 
 size_t D_PRT ; 
 size_t D_SLV ; 
 int /*<<< orphan*/  GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int PCD_UNITS ; 
 struct gendisk* FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__*** drives ; 
 int /*<<< orphan*/  major ; 
 char* name ; 
 struct pcd_unit* pcd ; 
 int /*<<< orphan*/  pcd_bdops ; 
 int /*<<< orphan*/  pcd_dops ; 
 scalar_t__ pcd_drive_count ; 
 int /*<<< orphan*/  pcd_mq_ops ; 
 int /*<<< orphan*/  FUNC5 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void)
{
	struct pcd_unit *cd;
	int unit;

	pcd_drive_count = 0;
	for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
		struct gendisk *disk = FUNC2(1);

		if (!disk)
			continue;

		disk->queue = FUNC3(&cd->tag_set, &pcd_mq_ops,
						   1, BLK_MQ_F_SHOULD_MERGE);
		if (FUNC1(disk->queue)) {
			disk->queue = NULL;
			FUNC5(disk);
			continue;
		}

		FUNC0(&cd->rq_list);
		disk->queue->queuedata = cd;
		FUNC4(disk->queue, BLK_BOUNCE_HIGH);
		cd->disk = disk;
		cd->pi = &cd->pia;
		cd->present = 0;
		cd->last_sense = 0;
		cd->changed = 1;
		cd->drive = (*drives[unit])[D_SLV];
		if ((*drives[unit])[D_PRT])
			pcd_drive_count++;

		cd->name = &cd->info.name[0];
		FUNC6(cd->name, sizeof(cd->info.name), "%s%d", name, unit);
		cd->info.ops = &pcd_dops;
		cd->info.handle = cd;
		cd->info.speed = 0;
		cd->info.capacity = 1;
		cd->info.mask = 0;
		disk->major = major;
		disk->first_minor = unit;
		FUNC7(disk->disk_name, cd->name);	/* umm... */
		disk->fops = &pcd_bdops;
		disk->flags = GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE;
		disk->events = DISK_EVENT_MEDIA_CHANGE;
	}
}