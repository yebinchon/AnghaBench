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
struct blk_mq_tags {unsigned int nr_reserved_tags; int const nr_tags; int /*<<< orphan*/  breserved_tags; int /*<<< orphan*/  bitmap_tags; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_mq_tags*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 

void FUNC3(struct blk_mq_hw_ctx *hctx, struct blk_mq_tags *tags,
		    struct blk_mq_ctx *ctx, unsigned int tag)
{
	if (!FUNC1(tags, tag)) {
		const int real_tag = tag - tags->nr_reserved_tags;

		FUNC0(real_tag >= tags->nr_tags);
		FUNC2(&tags->bitmap_tags, real_tag, ctx->cpu);
	} else {
		FUNC0(tag >= tags->nr_reserved_tags);
		FUNC2(&tags->breserved_tags, tag, ctx->cpu);
	}
}