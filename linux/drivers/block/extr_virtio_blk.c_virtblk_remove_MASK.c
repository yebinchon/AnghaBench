#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct virtio_device {TYPE_2__* config; struct virtio_blk* priv; } ;
struct virtio_blk {int index; struct virtio_blk* vqs; TYPE_3__* disk; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  config_work; } ;
struct TYPE_7__ {int /*<<< orphan*/  kref; } ;
struct TYPE_10__ {TYPE_1__ kobj; } ;
struct TYPE_9__ {int /*<<< orphan*/  queue; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_4__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_blk*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct virtio_device*) ; 
 int /*<<< orphan*/  vd_index_ida ; 

__attribute__((used)) static void FUNC11(struct virtio_device *vdev)
{
	struct virtio_blk *vblk = vdev->priv;
	int index = vblk->index;
	int refc;

	/* Make sure no work handler is accessing the device. */
	FUNC4(&vblk->config_work);

	FUNC2(vblk->disk);
	FUNC0(vblk->disk->queue);

	FUNC1(&vblk->tag_set);

	/* Stop all the virtqueues. */
	vdev->config->reset(vdev);

	refc = FUNC7(&FUNC3(vblk->disk)->kobj.kref);
	FUNC8(vblk->disk);
	vdev->config->del_vqs(vdev);
	FUNC6(vblk->vqs);
	FUNC6(vblk);

	/* Only free device id if we don't have any users */
	if (refc == 1)
		FUNC5(&vd_index_ida, index);
}