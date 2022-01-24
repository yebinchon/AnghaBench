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
struct crypto_authenc_keys {int /*<<< orphan*/  enckeylen; int /*<<< orphan*/  enckey; int /*<<< orphan*/  authkeylen; int /*<<< orphan*/  authkey; } ;
struct crypto_authenc_esn_ctx {struct crypto_skcipher* enc; struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 struct crypto_authenc_esn_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*,int) ; 
 int FUNC4 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*,int) ; 
 int FUNC6 (struct crypto_ahash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_skcipher*,int) ; 
 int FUNC9 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_skcipher*,int) ; 
 int FUNC11 (struct crypto_skcipher*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_authenc_keys*,int) ; 

__attribute__((used)) static int FUNC13(struct crypto_aead *authenc_esn, const u8 *key,
				     unsigned int keylen)
{
	struct crypto_authenc_esn_ctx *ctx = FUNC0(authenc_esn);
	struct crypto_ahash *auth = ctx->auth;
	struct crypto_skcipher *enc = ctx->enc;
	struct crypto_authenc_keys keys;
	int err = -EINVAL;

	if (FUNC7(&keys, key, keylen) != 0)
		goto badkey;

	FUNC3(auth, CRYPTO_TFM_REQ_MASK);
	FUNC5(auth, FUNC1(authenc_esn) &
				     CRYPTO_TFM_REQ_MASK);
	err = FUNC6(auth, keys.authkey, keys.authkeylen);
	FUNC2(authenc_esn, FUNC4(auth) &
					   CRYPTO_TFM_RES_MASK);

	if (err)
		goto out;

	FUNC8(enc, CRYPTO_TFM_REQ_MASK);
	FUNC10(enc, FUNC1(authenc_esn) &
					 CRYPTO_TFM_REQ_MASK);
	err = FUNC11(enc, keys.enckey, keys.enckeylen);
	FUNC2(authenc_esn, FUNC9(enc) &
					   CRYPTO_TFM_RES_MASK);

out:
	FUNC12(&keys, sizeof(keys));
	return err;

badkey:
	FUNC2(authenc_esn, CRYPTO_TFM_RES_BAD_KEY_LEN);
	goto out;
}