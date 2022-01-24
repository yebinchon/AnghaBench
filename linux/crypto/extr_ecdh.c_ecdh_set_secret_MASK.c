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
typedef  int /*<<< orphan*/  u64 ;
struct ecdh_ctx {unsigned int ndigits; int /*<<< orphan*/  private_key; int /*<<< orphan*/  curve_id; } ;
struct ecdh {int /*<<< orphan*/  key_size; scalar_t__ key; int /*<<< orphan*/  curve_id; } ;
struct crypto_kpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void const*,unsigned int,struct ecdh*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct ecdh_ctx* FUNC3 (struct crypto_kpp*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct crypto_kpp *tfm, const void *buf,
			   unsigned int len)
{
	struct ecdh_ctx *ctx = FUNC3(tfm);
	struct ecdh params;
	unsigned int ndigits;

	if (FUNC0(buf, len, &params) < 0)
		return -EINVAL;

	ndigits = FUNC4(params.curve_id);
	if (!ndigits)
		return -EINVAL;

	ctx->curve_id = params.curve_id;
	ctx->ndigits = ndigits;

	if (!params.key || !params.key_size)
		return FUNC1(ctx->curve_id, ctx->ndigits,
				       ctx->private_key);

	if (FUNC2(ctx->curve_id, ctx->ndigits,
			     (const u64 *)params.key, params.key_size) < 0)
		return -EINVAL;

	FUNC5(ctx->private_key, params.key, params.key_size);

	return 0;
}