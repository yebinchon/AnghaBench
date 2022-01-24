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
struct dentry {int dummy; } ;
struct blk_mq_hw_ctx {int /*<<< orphan*/  debugfs_dir; } ;
struct blk_mq_ctx {int cpu; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  blk_mq_debugfs_ctx_attrs ; 
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct blk_mq_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3(struct blk_mq_hw_ctx *hctx,
					struct blk_mq_ctx *ctx)
{
	struct dentry *ctx_dir;
	char name[20];

	FUNC2(name, sizeof(name), "cpu%u", ctx->cpu);
	ctx_dir = FUNC0(name, hctx->debugfs_dir);

	FUNC1(ctx_dir, ctx, blk_mq_debugfs_ctx_attrs);
}