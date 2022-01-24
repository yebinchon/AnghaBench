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
struct blk_mq_tag_set {int /*<<< orphan*/ ** tags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_tag_set*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct blk_mq_tag_set *set,
					 unsigned int hctx_idx)
{
	if (set->tags && set->tags[hctx_idx]) {
		FUNC1(set, set->tags[hctx_idx], hctx_idx);
		FUNC0(set->tags[hctx_idx]);
		set->tags[hctx_idx] = NULL;
	}
}