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
struct request_queue {struct ps3_storage_device* queuedata; } ;
struct ps3disk_private {int /*<<< orphan*/  lock; } ;
struct ps3_storage_device {int /*<<< orphan*/  sbd; } ;
struct blk_mq_queue_data {int /*<<< orphan*/  rq; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ps3disk_private* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ps3_storage_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC5(struct blk_mq_hw_ctx *hctx,
				     const struct blk_mq_queue_data *bd)
{
	struct request_queue *q = hctx->queue;
	struct ps3_storage_device *dev = q->queuedata;
	struct ps3disk_private *priv = FUNC1(&dev->sbd);
	blk_status_t ret;

	FUNC0(bd->rq);

	FUNC3(&priv->lock);
	ret = FUNC2(dev, bd->rq);
	FUNC4(&priv->lock);

	return ret;
}