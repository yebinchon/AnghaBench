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
struct dh_ctx {int /*<<< orphan*/  xa; } ;
struct dh {int /*<<< orphan*/  key_size; int /*<<< orphan*/  key; } ;
struct crypto_kpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void const*,unsigned int,struct dh*) ; 
 int /*<<< orphan*/  FUNC1 (struct dh_ctx*) ; 
 struct dh_ctx* FUNC2 (struct crypto_kpp*) ; 
 scalar_t__ FUNC3 (struct dh_ctx*,struct dh*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct crypto_kpp *tfm, const void *buf,
			 unsigned int len)
{
	struct dh_ctx *ctx = FUNC2(tfm);
	struct dh params;

	/* Free the old MPI key if any */
	FUNC1(ctx);

	if (FUNC0(buf, len, &params) < 0)
		goto err_clear_ctx;

	if (FUNC3(ctx, &params) < 0)
		goto err_clear_ctx;

	ctx->xa = FUNC4(params.key, params.key_size);
	if (!ctx->xa)
		goto err_clear_ctx;

	return 0;

err_clear_ctx:
	FUNC1(ctx);
	return -EINVAL;
}