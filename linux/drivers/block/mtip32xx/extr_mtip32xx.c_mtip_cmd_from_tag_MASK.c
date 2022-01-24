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
struct mtip_cmd {int dummy; } ;
struct driver_data {TYPE_1__* queue; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  tags; } ;
struct TYPE_2__ {struct blk_mq_hw_ctx** queue_hw_ctx; } ;

/* Variables and functions */
 struct mtip_cmd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct mtip_cmd *FUNC2(struct driver_data *dd,
					  unsigned int tag)
{
	struct blk_mq_hw_ctx *hctx = dd->queue->queue_hw_ctx[0];

	return FUNC0(FUNC1(hctx->tags, tag));
}