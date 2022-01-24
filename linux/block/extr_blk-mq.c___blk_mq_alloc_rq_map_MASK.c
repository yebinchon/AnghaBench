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
struct blk_mq_tag_set {int /*<<< orphan*/ ** tags; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/  reserved_tags; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct blk_mq_tag_set*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct blk_mq_tag_set*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct blk_mq_tag_set *set, int hctx_idx)
{
	int ret = 0;

	set->tags[hctx_idx] = FUNC0(set, hctx_idx,
					set->queue_depth, set->reserved_tags);
	if (!set->tags[hctx_idx])
		return false;

	ret = FUNC1(set, set->tags[hctx_idx], hctx_idx,
				set->queue_depth);
	if (!ret)
		return true;

	FUNC2(set->tags[hctx_idx]);
	set->tags[hctx_idx] = NULL;
	return false;
}