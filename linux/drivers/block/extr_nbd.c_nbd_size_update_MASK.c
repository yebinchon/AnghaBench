#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nbd_device {TYPE_2__* disk; struct nbd_config* config; } ;
struct nbd_config {int flags; int bytesize; int /*<<< orphan*/  blksize; } ;
struct block_device {int bd_invalidated; scalar_t__ bd_disk; } ;
struct TYPE_8__ {int /*<<< orphan*/  discard_alignment; int /*<<< orphan*/  discard_granularity; } ;
struct TYPE_11__ {TYPE_1__ limits; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {TYPE_4__* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int NBD_FLAG_SEND_TRIM ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*,int) ; 
 struct block_device* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC10(struct nbd_device *nbd)
{
	struct nbd_config *config = nbd->config;
	struct block_device *bdev = FUNC1(nbd->disk, 0);

	if (config->flags & NBD_FLAG_SEND_TRIM) {
		nbd->disk->queue->limits.discard_granularity = config->blksize;
		nbd->disk->queue->limits.discard_alignment = config->blksize;
		FUNC4(nbd->disk->queue, UINT_MAX);
	}
	FUNC3(nbd->disk->queue, config->blksize);
	FUNC5(nbd->disk->queue, config->blksize);
	FUNC9(nbd->disk, config->bytesize >> 9);
	if (bdev) {
		if (bdev->bd_disk) {
			FUNC0(bdev, config->bytesize);
			FUNC8(bdev, config->blksize);
		} else
			bdev->bd_invalidated = 1;
		FUNC2(bdev);
	}
	FUNC6(&FUNC7(nbd)->kobj, KOBJ_CHANGE);
}