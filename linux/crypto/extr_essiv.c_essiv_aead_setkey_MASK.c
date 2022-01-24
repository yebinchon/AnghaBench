#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {struct crypto_aead* aead; } ;
struct essiv_tfm_ctx {int /*<<< orphan*/  essiv_cipher; int /*<<< orphan*/  hash; TYPE_1__ u; } ;
struct crypto_authenc_keys {int /*<<< orphan*/  authkeylen; int /*<<< orphan*/  authkey; int /*<<< orphan*/  enckeylen; int /*<<< orphan*/  enckey; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 int HASH_MAX_DIGESTSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*,int) ; 
 struct essiv_tfm_ctx* FUNC2 (struct crypto_aead*) ; 
 int FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aead*,int) ; 
 int FUNC5 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC6 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* desc ; 

__attribute__((used)) static int FUNC15(struct crypto_aead *tfm, const u8 *key,
			     unsigned int keylen)
{
	struct essiv_tfm_ctx *tctx = FUNC2(tfm);
	FUNC0(desc, tctx->hash);
	struct crypto_authenc_keys keys;
	u8 salt[HASH_MAX_DIGESTSIZE];
	int err;

	FUNC1(tctx->u.aead, CRYPTO_TFM_REQ_MASK);
	FUNC4(tctx->u.aead, FUNC3(tfm) &
					    CRYPTO_TFM_REQ_MASK);
	err = FUNC5(tctx->u.aead, key, keylen);
	FUNC4(tfm, FUNC3(tctx->u.aead) &
				   CRYPTO_TFM_RES_MASK);
	if (err)
		return err;

	if (FUNC6(&keys, key, keylen) != 0) {
		FUNC4(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	desc->tfm = tctx->hash;
	err = FUNC13(desc) ?:
	      FUNC14(desc, keys.enckey, keys.enckeylen) ?:
	      FUNC12(desc, keys.authkey, keys.authkeylen, salt);
	if (err)
		return err;

	FUNC7(tctx->essiv_cipher, CRYPTO_TFM_REQ_MASK);
	FUNC9(tctx->essiv_cipher, FUNC3(tfm) &
						    CRYPTO_TFM_REQ_MASK);
	err = FUNC10(tctx->essiv_cipher, salt,
				   FUNC11(tctx->hash));
	FUNC4(tfm, FUNC8(tctx->essiv_cipher) &
				   CRYPTO_TFM_RES_MASK);

	return err;
}