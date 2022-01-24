#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zram {int claim; TYPE_1__* disk; } ;
struct block_device {int /*<<< orphan*/  bd_mutex; scalar_t__ bd_openers; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 struct block_device* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct zram*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct zram*) ; 
 int /*<<< orphan*/  FUNC11 (struct zram*) ; 

__attribute__((used)) static int FUNC12(struct zram *zram)
{
	struct block_device *bdev;

	bdev = FUNC0(zram->disk, 0);
	if (!bdev)
		return -ENOMEM;

	FUNC6(&bdev->bd_mutex);
	if (bdev->bd_openers || zram->claim) {
		FUNC7(&bdev->bd_mutex);
		FUNC1(bdev);
		return -EBUSY;
	}

	zram->claim = true;
	FUNC7(&bdev->bd_mutex);

	FUNC10(zram);

	/* Make sure all the pending I/O are finished */
	FUNC4(bdev);
	FUNC11(zram);
	FUNC1(bdev);

	FUNC8("Removed device: %s\n", zram->disk->disk_name);

	FUNC3(zram->disk);
	FUNC2(zram->disk->queue);
	FUNC9(zram->disk);
	FUNC5(zram);
	return 0;
}