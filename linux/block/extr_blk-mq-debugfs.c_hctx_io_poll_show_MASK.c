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
struct blk_mq_hw_ctx {int /*<<< orphan*/  poll_success; int /*<<< orphan*/  poll_invoked; int /*<<< orphan*/  poll_considered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *data, struct seq_file *m)
{
	struct blk_mq_hw_ctx *hctx = data;

	FUNC0(m, "considered=%lu\n", hctx->poll_considered);
	FUNC0(m, "invoked=%lu\n", hctx->poll_invoked);
	FUNC0(m, "success=%lu\n", hctx->poll_success);
	return 0;
}