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
struct ghash_desc_ctx {int /*<<< orphan*/  key; } ;
struct ghash_ctx {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  GHASH_BLOCK_SIZE ; 
 struct ghash_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ghash_desc_ctx*,int /*<<< orphan*/ ,int) ; 
 struct ghash_desc_ctx* FUNC3 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC4(struct shash_desc *desc)
{
	struct ghash_desc_ctx *dctx = FUNC3(desc);
	struct ghash_ctx *ctx = FUNC0(desc->tfm);

	FUNC2(dctx, 0, sizeof(*dctx));
	FUNC1(dctx->key, ctx->key, GHASH_BLOCK_SIZE);

	return 0;
}