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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct michael_mic_desc_ctx {int /*<<< orphan*/  r; int /*<<< orphan*/  l; scalar_t__ pending_len; } ;
struct michael_mic_ctx {int /*<<< orphan*/  r; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 struct michael_mic_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 struct michael_mic_desc_ctx* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc)
{
	struct michael_mic_desc_ctx *mctx = FUNC1(desc);
	struct michael_mic_ctx *ctx = FUNC0(desc->tfm);
	mctx->pending_len = 0;
	mctx->l = ctx->l;
	mctx->r = ctx->r;

	return 0;
}