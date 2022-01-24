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
typedef  int /*<<< orphan*/  u8 ;
struct ghash_ctx {scalar_t__ gf128; } ;
struct crypto_shash {int dummy; } ;
typedef  int /*<<< orphan*/  k ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int GHASH_BLOCK_SIZE ; 
 struct ghash_ctx* FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_shash *tfm,
			const u8 *key, unsigned int keylen)
{
	struct ghash_ctx *ctx = FUNC1(tfm);
	be128 k;

	if (keylen != GHASH_BLOCK_SIZE) {
		FUNC2(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	if (ctx->gf128)
		FUNC3(ctx->gf128);

	FUNC0(sizeof(k) != GHASH_BLOCK_SIZE);
	FUNC5(&k, key, GHASH_BLOCK_SIZE); /* avoid violating alignment rules */
	ctx->gf128 = FUNC4(&k);
	FUNC6(&k, GHASH_BLOCK_SIZE);

	if (!ctx->gf128)
		return -ENOMEM;

	return 0;
}