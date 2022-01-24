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
struct virtio_blk_vq {int /*<<< orphan*/  vq; int /*<<< orphan*/  lock; } ;
struct virtio_blk {struct virtio_blk_vq* vqs; } ;
struct blk_mq_hw_ctx {size_t queue_num; TYPE_1__* queue; } ;
struct TYPE_2__ {struct virtio_blk* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct blk_mq_hw_ctx *hctx)
{
	struct virtio_blk *vblk = hctx->queue->queuedata;
	struct virtio_blk_vq *vq = &vblk->vqs[hctx->queue_num];
	bool kick;

	FUNC0(&vq->lock);
	kick = FUNC2(vq->vq);
	FUNC1(&vq->lock);

	if (kick)
		FUNC3(vq->vq);
}