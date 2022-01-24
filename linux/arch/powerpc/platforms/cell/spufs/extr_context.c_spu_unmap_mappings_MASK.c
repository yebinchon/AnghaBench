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
struct spu_context {int /*<<< orphan*/  mapping_lock; scalar_t__ psmap; scalar_t__ mss; scalar_t__ signal2; scalar_t__ signal1; scalar_t__ cntl; scalar_t__ mfc; scalar_t__ local_store; } ;

/* Variables and functions */
 int /*<<< orphan*/  LS_SIZE ; 
 int /*<<< orphan*/  SPUFS_CNTL_MAP_SIZE ; 
 int /*<<< orphan*/  SPUFS_MFC_MAP_SIZE ; 
 int /*<<< orphan*/  SPUFS_MSS_MAP_SIZE ; 
 int /*<<< orphan*/  SPUFS_PS_MAP_SIZE ; 
 int /*<<< orphan*/  SPUFS_SIGNAL_MAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct spu_context *ctx)
{
	FUNC0(&ctx->mapping_lock);
	if (ctx->local_store)
		FUNC2(ctx->local_store, 0, LS_SIZE, 1);
	if (ctx->mfc)
		FUNC2(ctx->mfc, 0, SPUFS_MFC_MAP_SIZE, 1);
	if (ctx->cntl)
		FUNC2(ctx->cntl, 0, SPUFS_CNTL_MAP_SIZE, 1);
	if (ctx->signal1)
		FUNC2(ctx->signal1, 0, SPUFS_SIGNAL_MAP_SIZE, 1);
	if (ctx->signal2)
		FUNC2(ctx->signal2, 0, SPUFS_SIGNAL_MAP_SIZE, 1);
	if (ctx->mss)
		FUNC2(ctx->mss, 0, SPUFS_MSS_MAP_SIZE, 1);
	if (ctx->psmap)
		FUNC2(ctx->psmap, 0, SPUFS_PS_MAP_SIZE, 1);
	FUNC1(&ctx->mapping_lock);
}