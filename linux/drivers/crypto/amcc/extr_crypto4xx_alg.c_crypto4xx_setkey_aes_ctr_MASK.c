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
struct crypto_skcipher {int dummy; } ;
struct crypto4xx_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_FEEDBACK_MODE_NO_FB ; 
 int /*<<< orphan*/  CRYPTO_MODE_CTR ; 
 int FUNC0 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct crypto4xx_ctx*,struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto4xx_ctx* FUNC2 (struct crypto_skcipher*) ; 

int FUNC3(struct crypto_skcipher *cipher,
			     const u8 *key, unsigned int keylen)
{
	struct crypto4xx_ctx *ctx = FUNC2(cipher);
	int rc;

	rc = FUNC1(ctx, cipher, key, keylen);
	if (rc)
		return rc;

	return FUNC0(cipher, key, keylen,
		CRYPTO_MODE_CTR, CRYPTO_FEEDBACK_MODE_NO_FB);
}