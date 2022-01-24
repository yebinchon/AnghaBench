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
struct seq_file {int dummy; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  ctx_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct seq_file*) ; 

__attribute__((used)) static int FUNC1(void *data, struct seq_file *m)
{
	struct blk_mq_hw_ctx *hctx = data;

	FUNC0(&hctx->ctx_map, m);
	return 0;
}