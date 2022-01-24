#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ wait_queue_entry_t ;
struct wait_queue_head {int /*<<< orphan*/  lock; } ;
struct sbitmap_queue {int /*<<< orphan*/  ws_active; } ;
struct request {int dummy; } ;
struct blk_mq_hw_ctx {int flags; int /*<<< orphan*/  dispatch_wait_lock; TYPE_2__ dispatch_wait; TYPE_1__* tags; } ;
struct TYPE_7__ {struct wait_queue_head wait; } ;
struct TYPE_5__ {struct sbitmap_queue bitmap_tags; } ;

/* Variables and functions */
 int BLK_MQ_F_TAG_SHARED ; 
 int /*<<< orphan*/  WQ_FLAG_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct wait_queue_head*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_mq_hw_ctx*) ; 
 TYPE_3__* FUNC5 (struct sbitmap_queue*,struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC13(struct blk_mq_hw_ctx *hctx,
				 struct request *rq)
{
	struct sbitmap_queue *sbq = &hctx->tags->bitmap_tags;
	struct wait_queue_head *wq;
	wait_queue_entry_t *wait;
	bool ret;

	if (!(hctx->flags & BLK_MQ_F_TAG_SHARED)) {
		FUNC4(hctx);

		/*
		 * It's possible that a tag was freed in the window between the
		 * allocation failure and adding the hardware queue to the wait
		 * queue.
		 *
		 * Don't clear RESTART here, someone else could have set it.
		 * At most this will cost an extra queue run.
		 */
		return FUNC3(rq);
	}

	wait = &hctx->dispatch_wait;
	if (!FUNC8(&wait->entry))
		return false;

	wq = &FUNC5(sbq, hctx)->wait;

	FUNC10(&wq->lock);
	FUNC9(&hctx->dispatch_wait_lock);
	if (!FUNC7(&wait->entry)) {
		FUNC11(&hctx->dispatch_wait_lock);
		FUNC12(&wq->lock);
		return false;
	}

	FUNC2(&sbq->ws_active);
	wait->flags &= ~WQ_FLAG_EXCLUSIVE;
	FUNC0(wq, wait);

	/*
	 * It's possible that a tag was freed in the window between the
	 * allocation failure and adding the hardware queue to the wait
	 * queue.
	 */
	ret = FUNC3(rq);
	if (!ret) {
		FUNC11(&hctx->dispatch_wait_lock);
		FUNC12(&wq->lock);
		return false;
	}

	/*
	 * We got a tag, remove ourselves from the wait queue to ensure
	 * someone else gets the wakeup.
	 */
	FUNC6(&wait->entry);
	FUNC1(&sbq->ws_active);
	FUNC11(&hctx->dispatch_wait_lock);
	FUNC12(&wq->lock);

	return true;
}