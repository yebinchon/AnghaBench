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
struct lz4_ctx {int /*<<< orphan*/  lz4_comp_mem; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct lz4_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm)
{
	struct lz4_ctx *ctx = FUNC0(tfm);

	FUNC1(NULL, ctx->lz4_comp_mem);
}