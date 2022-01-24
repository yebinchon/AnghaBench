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
struct crypto_aead {int dummy; } ;
struct chachapoly_ctx {unsigned int saltlen; int /*<<< orphan*/  chacha; int /*<<< orphan*/  salt; } ;

/* Variables and functions */
 unsigned int CHACHA_KEY_SIZE ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 struct chachapoly_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct crypto_aead *aead, const u8 *key,
			     unsigned int keylen)
{
	struct chachapoly_ctx *ctx = FUNC0(aead);
	int err;

	if (keylen != ctx->saltlen + CHACHA_KEY_SIZE)
		return -EINVAL;

	keylen -= ctx->saltlen;
	FUNC7(ctx->salt, key + keylen, ctx->saltlen);

	FUNC3(ctx->chacha, CRYPTO_TFM_REQ_MASK);
	FUNC5(ctx->chacha, FUNC1(aead) &
					       CRYPTO_TFM_REQ_MASK);

	err = FUNC6(ctx->chacha, key, keylen);
	FUNC2(aead, FUNC4(ctx->chacha) &
				    CRYPTO_TFM_RES_MASK);
	return err;
}