#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct of_device_id {int dummy; } ;
struct macio_dev {int dummy; } ;
struct gendisk {size_t first_minor; TYPE_1__* queue; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  flags; int /*<<< orphan*/  events; struct floppy_state* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;
struct floppy_state {int /*<<< orphan*/  tag_set; } ;
struct TYPE_6__ {struct floppy_state* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_HIGH ; 
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int /*<<< orphan*/  DISK_EVENT_MEDIA_CHANGE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FLOPPY_MAJOR ; 
 int /*<<< orphan*/  GENHD_FL_REMOVABLE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 size_t MAX_FLOPPIES ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 struct gendisk* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct gendisk** disks ; 
 size_t floppy_count ; 
 int /*<<< orphan*/  floppy_fops ; 
 struct floppy_state* floppy_states ; 
 int /*<<< orphan*/  FUNC8 (struct floppy_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gendisk*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC13 (struct macio_dev*,size_t) ; 
 int /*<<< orphan*/  swim3_mq_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(struct macio_dev *mdev,
			const struct of_device_id *match)
{
	struct floppy_state *fs;
	struct gendisk *disk;
	int rc;

	if (floppy_count >= MAX_FLOPPIES)
		return -ENXIO;

	if (floppy_count == 0) {
		rc = FUNC10(FLOPPY_MAJOR, "fd");
		if (rc)
			return rc;
	}

	disk = FUNC3(1);
	if (disk == NULL) {
		rc = -ENOMEM;
		goto out_unregister;
	}

	fs = &floppy_states[floppy_count];
	FUNC8(fs, 0, sizeof(*fs));

	disk->queue = FUNC6(&fs->tag_set, &swim3_mq_ops, 2,
						BLK_MQ_F_SHOULD_MERGE);
	if (FUNC0(disk->queue)) {
		rc = FUNC1(disk->queue);
		disk->queue = NULL;
		goto out_put_disk;
	}
	FUNC7(disk->queue, BLK_BOUNCE_HIGH);
	disk->queue->queuedata = fs;

	rc = FUNC13(mdev, floppy_count);
	if (rc)
		goto out_cleanup_queue;

	disk->major = FLOPPY_MAJOR;
	disk->first_minor = floppy_count;
	disk->fops = &floppy_fops;
	disk->private_data = fs;
	disk->events = DISK_EVENT_MEDIA_CHANGE;
	disk->flags |= GENHD_FL_REMOVABLE;
	FUNC12(disk->disk_name, "fd%d", floppy_count);
	FUNC11(disk, 2880);
	FUNC2(disk);

	disks[floppy_count++] = disk;
	return 0;

out_cleanup_queue:
	FUNC4(disk->queue);
	disk->queue = NULL;
	FUNC5(&fs->tag_set);
out_put_disk:
	FUNC9(disk);
out_unregister:
	if (floppy_count == 0)
		FUNC14(FLOPPY_MAJOR, "fd");
	return rc;
}