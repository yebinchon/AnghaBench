#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {struct crypto_skcipher* skcipher; } ;
struct essiv_tfm_ctx {int /*<<< orphan*/  essiv_cipher; int /*<<< orphan*/  hash; TYPE_1__ u; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int HASH_MAX_DIGESTSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_skcipher*,int) ; 
 struct essiv_tfm_ctx* FUNC8 (struct crypto_skcipher*) ; 
 int FUNC9 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_skcipher*,int) ; 
 int FUNC11 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 TYPE_2__* desc ; 

__attribute__((used)) static int FUNC12(struct crypto_skcipher *tfm,
				 const u8 *key, unsigned int keylen)
{
	struct essiv_tfm_ctx *tctx = FUNC8(tfm);
	FUNC0(desc, tctx->hash);
	u8 salt[HASH_MAX_DIGESTSIZE];
	int err;

	FUNC7(tctx->u.skcipher, CRYPTO_TFM_REQ_MASK);
	FUNC10(tctx->u.skcipher,
				  FUNC9(tfm) &
				  CRYPTO_TFM_REQ_MASK);
	err = FUNC11(tctx->u.skcipher, key, keylen);
	FUNC10(tfm,
				  FUNC9(tctx->u.skcipher) &
				  CRYPTO_TFM_RES_MASK);
	if (err)
		return err;

	desc->tfm = tctx->hash;
	err = FUNC5(desc, key, keylen, salt);
	if (err)
		return err;

	FUNC1(tctx->essiv_cipher, CRYPTO_TFM_REQ_MASK);
	FUNC3(tctx->essiv_cipher,
				FUNC9(tfm) &
				CRYPTO_TFM_REQ_MASK);
	err = FUNC4(tctx->essiv_cipher, salt,
				   FUNC6(tctx->hash));
	FUNC10(tfm,
				  FUNC2(tctx->essiv_cipher) &
				  CRYPTO_TFM_RES_MASK);

	return err;
}