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
typedef  int /*<<< orphan*/  u8 ;
struct virtio_device {struct virtio_blk* priv; } ;
struct virtio_blk {TYPE_1__* disk; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC3(struct virtio_device *vdev)
{
	u8 writeback = FUNC2(vdev);
	struct virtio_blk *vblk = vdev->priv;

	FUNC0(vblk->disk->queue, writeback, false);
	FUNC1(vblk->disk);
}