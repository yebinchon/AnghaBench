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
struct priv {struct crypto_skcipher* child; struct crypto_cipher* tweak; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_cipher*,int) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_cipher*,int) ; 
 int FUNC3 (struct crypto_cipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*,int) ; 
 struct priv* FUNC5 (struct crypto_skcipher*) ; 
 int FUNC6 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_skcipher*,int) ; 
 int FUNC8 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC9 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct crypto_skcipher *parent, const u8 *key,
		  unsigned int keylen)
{
	struct priv *ctx = FUNC5(parent);
	struct crypto_skcipher *child;
	struct crypto_cipher *tweak;
	int err;

	err = FUNC9(parent, key, keylen);
	if (err)
		return err;

	keylen /= 2;

	/* we need two cipher instances: one to compute the initial 'tweak'
	 * by encrypting the IV (usually the 'plain' iv) and the other
	 * one to encrypt and decrypt the data */

	/* tweak cipher, uses Key2 i.e. the second half of *key */
	tweak = ctx->tweak;
	FUNC0(tweak, CRYPTO_TFM_REQ_MASK);
	FUNC2(tweak, FUNC6(parent) &
				       CRYPTO_TFM_REQ_MASK);
	err = FUNC3(tweak, key + keylen, keylen);
	FUNC7(parent, FUNC1(tweak) &
					  CRYPTO_TFM_RES_MASK);
	if (err)
		return err;

	/* data cipher, uses Key1 i.e. the first half of *key */
	child = ctx->child;
	FUNC4(child, CRYPTO_TFM_REQ_MASK);
	FUNC7(child, FUNC6(parent) &
					 CRYPTO_TFM_REQ_MASK);
	err = FUNC8(child, key, keylen);
	FUNC7(parent, FUNC6(child) &
					  CRYPTO_TFM_RES_MASK);

	return err;
}