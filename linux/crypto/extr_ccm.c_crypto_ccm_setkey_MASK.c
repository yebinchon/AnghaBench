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
struct crypto_ccm_ctx {struct crypto_ahash* mac; struct crypto_skcipher* ctr; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 struct crypto_ccm_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*,int) ; 
 int FUNC4 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*,int) ; 
 int FUNC6 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_skcipher*,int) ; 
 int FUNC8 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_skcipher*,int) ; 
 int FUNC10 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct crypto_aead *aead, const u8 *key,
			     unsigned int keylen)
{
	struct crypto_ccm_ctx *ctx = FUNC0(aead);
	struct crypto_skcipher *ctr = ctx->ctr;
	struct crypto_ahash *mac = ctx->mac;
	int err = 0;

	FUNC7(ctr, CRYPTO_TFM_REQ_MASK);
	FUNC9(ctr, FUNC1(aead) &
				       CRYPTO_TFM_REQ_MASK);
	err = FUNC10(ctr, key, keylen);
	FUNC2(aead, FUNC8(ctr) &
			      CRYPTO_TFM_RES_MASK);
	if (err)
		goto out;

	FUNC3(mac, CRYPTO_TFM_REQ_MASK);
	FUNC5(mac, FUNC1(aead) &
				    CRYPTO_TFM_REQ_MASK);
	err = FUNC6(mac, key, keylen);
	FUNC2(aead, FUNC4(mac) &
			      CRYPTO_TFM_RES_MASK);

out:
	return err;
}