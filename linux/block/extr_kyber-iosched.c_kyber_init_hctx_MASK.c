#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kyber_queue_data {int /*<<< orphan*/  async_depth; } ;
struct kyber_hctx_data {struct kyber_hctx_data* kcqs; scalar_t__ batching; scalar_t__ cur_domain; int /*<<< orphan*/ * wait_index; TYPE_3__* domain_wait; int /*<<< orphan*/ * rqs; int /*<<< orphan*/  lock; int /*<<< orphan*/ * kcq_map; } ;
struct kyber_ctx_queue {int dummy; } ;
struct blk_mq_hw_ctx {int nr_ctx; TYPE_4__* sched_tags; struct kyber_hctx_data* sched_data; int /*<<< orphan*/  numa_node; TYPE_2__* queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  entry; struct blk_mq_hw_ctx* private; } ;
struct TYPE_9__ {int /*<<< orphan*/  bitmap_tags; } ;
struct TYPE_8__ {TYPE_5__ wait; int /*<<< orphan*/ * sbq; } ;
struct TYPE_7__ {TYPE_1__* elevator; } ;
struct TYPE_6__ {struct kyber_queue_data* elevator_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int KYBER_NUM_DOMAINS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kyber_hctx_data*) ; 
 struct kyber_hctx_data* FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kyber_hctx_data* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kyber_hctx_data*) ; 
 int /*<<< orphan*/  kyber_domain_wake ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct blk_mq_hw_ctx *hctx, unsigned int hctx_idx)
{
	struct kyber_queue_data *kqd = hctx->queue->elevator->elevator_data;
	struct kyber_hctx_data *khd;
	int i;

	khd = FUNC6(sizeof(*khd), GFP_KERNEL, hctx->numa_node);
	if (!khd)
		return -ENOMEM;

	khd->kcqs = FUNC5(hctx->nr_ctx,
				       sizeof(struct kyber_ctx_queue),
				       GFP_KERNEL, hctx->numa_node);
	if (!khd->kcqs)
		goto err_khd;

	for (i = 0; i < hctx->nr_ctx; i++)
		FUNC7(&khd->kcqs[i]);

	for (i = 0; i < KYBER_NUM_DOMAINS; i++) {
		if (FUNC9(&khd->kcq_map[i], hctx->nr_ctx,
				      FUNC2(8), GFP_KERNEL, hctx->numa_node)) {
			while (--i >= 0)
				FUNC8(&khd->kcq_map[i]);
			goto err_kcqs;
		}
	}

	FUNC11(&khd->lock);

	for (i = 0; i < KYBER_NUM_DOMAINS; i++) {
		FUNC0(&khd->rqs[i]);
		khd->domain_wait[i].sbq = NULL;
		FUNC3(&khd->domain_wait[i].wait,
					  kyber_domain_wake);
		khd->domain_wait[i].wait.private = hctx;
		FUNC0(&khd->domain_wait[i].wait.entry);
		FUNC1(&khd->wait_index[i], 0);
	}

	khd->cur_domain = 0;
	khd->batching = 0;

	hctx->sched_data = khd;
	FUNC10(&hctx->sched_tags->bitmap_tags,
					kqd->async_depth);

	return 0;

err_kcqs:
	FUNC4(khd->kcqs);
err_khd:
	FUNC4(khd);
	return -ENOMEM;
}