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
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct lz4_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct lz4_ctx *ctx = FUNC1(tfm);

	ctx->lz4_comp_mem = FUNC2(NULL);
	if (FUNC0(ctx->lz4_comp_mem))
		return -ENOMEM;

	return 0;
}