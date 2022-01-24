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
struct sbq_wait_state {int dummy; } ;
struct sbitmap_queue {int dummy; } ;
struct blk_mq_tags {unsigned int nr_reserved_tags; struct sbitmap_queue bitmap_tags; struct sbitmap_queue breserved_tags; } ;
struct blk_mq_alloc_data {int flags; int /*<<< orphan*/  hctx; int /*<<< orphan*/  ctx; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int BLK_MQ_REQ_NOWAIT ; 
 int BLK_MQ_REQ_RESERVED ; 
 unsigned int BLK_MQ_TAG_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct blk_mq_alloc_data*,struct sbitmap_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct blk_mq_tags* FUNC6 (struct blk_mq_alloc_data*) ; 
 struct sbq_wait_state* FUNC7 (struct sbitmap_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sbitmap_queue*,struct sbq_wait_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sbitmap_queue*,struct sbq_wait_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sbitmap_queue*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  wait ; 

unsigned int FUNC13(struct blk_mq_alloc_data *data)
{
	struct blk_mq_tags *tags = FUNC6(data);
	struct sbitmap_queue *bt;
	struct sbq_wait_state *ws;
	FUNC0(wait);
	unsigned int tag_offset;
	int tag;

	if (data->flags & BLK_MQ_REQ_RESERVED) {
		if (FUNC12(!tags->nr_reserved_tags)) {
			FUNC1(1);
			return BLK_MQ_TAG_FAIL;
		}
		bt = &tags->breserved_tags;
		tag_offset = 0;
	} else {
		bt = &tags->bitmap_tags;
		tag_offset = tags->nr_reserved_tags;
	}

	tag = FUNC2(data, bt);
	if (tag != -1)
		goto found_tag;

	if (data->flags & BLK_MQ_REQ_NOWAIT)
		return BLK_MQ_TAG_FAIL;

	ws = FUNC7(bt, data->hctx);
	do {
		struct sbitmap_queue *bt_prev;

		/*
		 * We're out of tags on this hardware queue, kick any
		 * pending IO submits before going to sleep waiting for
		 * some to complete.
		 */
		FUNC5(data->hctx, false);

		/*
		 * Retry tag allocation after running the hardware queue,
		 * as running the queue may also have found completions.
		 */
		tag = FUNC2(data, bt);
		if (tag != -1)
			break;

		FUNC10(bt, ws, &wait, TASK_UNINTERRUPTIBLE);

		tag = FUNC2(data, bt);
		if (tag != -1)
			break;

		bt_prev = bt;
		FUNC8();

		FUNC9(bt, ws, &wait);

		data->ctx = FUNC3(data->q);
		data->hctx = FUNC4(data->q, data->cmd_flags,
						data->ctx);
		tags = FUNC6(data);
		if (data->flags & BLK_MQ_REQ_RESERVED)
			bt = &tags->breserved_tags;
		else
			bt = &tags->bitmap_tags;

		/*
		 * If destination hw queue is changed, fake wake up on
		 * previous queue for compensating the wake up miss, so
		 * other allocations on previous queue won't be starved.
		 */
		if (bt != bt_prev)
			FUNC11(bt_prev);

		ws = FUNC7(bt, data->hctx);
	} while (1);

	FUNC9(bt, ws, &wait);

found_tag:
	return tag + tag_offset;
}