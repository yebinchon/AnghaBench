#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int cmd_size; int nr_hw_queues; int nr_maps; int queue_depth; int flags; int /*<<< orphan*/  numa_node; int /*<<< orphan*/ * ops; } ;
struct pd_unit {int drive; struct gendisk* gd; TYPE_1__ tag_set; int /*<<< orphan*/  name; } ;
struct pd_req {int dummy; } ;
struct gendisk {int first_minor; TYPE_2__* queue; struct pd_unit* private_data; int /*<<< orphan*/  events; int /*<<< orphan*/  major; int /*<<< orphan*/ * fops; int /*<<< orphan*/  disk_name; } ;
struct TYPE_10__ {struct pd_unit* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_HIGH ; 
 int BLK_MQ_F_BLOCKING ; 
 int BLK_MQ_F_SHOULD_MERGE ; 
 int /*<<< orphan*/  DISK_EVENT_MEDIA_CHANGE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int PD_BITS ; 
 struct gendisk* FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cluster ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct pd_unit* pd ; 
 int /*<<< orphan*/  pd_fops ; 
 int /*<<< orphan*/  pd_identify ; 
 int /*<<< orphan*/  pd_mq_ops ; 
 scalar_t__ FUNC8 (struct pd_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct pd_unit *disk)
{
	struct gendisk *p;

	p = FUNC1(1 << PD_BITS);
	if (!p)
		return;

	FUNC10(p->disk_name, disk->name);
	p->fops = &pd_fops;
	p->major = major;
	p->first_minor = (disk - pd) << PD_BITS;
	p->events = DISK_EVENT_MEDIA_CHANGE;
	disk->gd = p;
	p->private_data = disk;

	FUNC7(&disk->tag_set, 0, sizeof(disk->tag_set));
	disk->tag_set.ops = &pd_mq_ops;
	disk->tag_set.cmd_size = sizeof(struct pd_req);
	disk->tag_set.nr_hw_queues = 1;
	disk->tag_set.nr_maps = 1;
	disk->tag_set.queue_depth = 2;
	disk->tag_set.numa_node = NUMA_NO_NODE;
	disk->tag_set.flags = BLK_MQ_F_SHOULD_MERGE | BLK_MQ_F_BLOCKING;

	if (FUNC2(&disk->tag_set))
		return;

	p->queue = FUNC4(&disk->tag_set);
	if (FUNC0(p->queue)) {
		FUNC3(&disk->tag_set);
		p->queue = NULL;
		return;
	}

	p->queue->queuedata = disk;
	FUNC6(p->queue, cluster);
	FUNC5(p->queue, BLK_BOUNCE_HIGH);

	if (disk->drive == -1) {
		for (disk->drive = 0; disk->drive <= 1; disk->drive++)
			if (FUNC8(disk, pd_identify) == 0)
				return;
	} else if (FUNC8(disk, pd_identify) == 0)
		return;
	disk->gd = NULL;
	FUNC9(p);
}