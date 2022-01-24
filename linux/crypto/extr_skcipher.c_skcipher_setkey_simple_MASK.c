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
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_cipher*,int) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_cipher*,int) ; 
 int FUNC3 (struct crypto_cipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_skcipher*,int) ; 
 struct crypto_cipher* FUNC6 (struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *tfm, const u8 *key,
				  unsigned int keylen)
{
	struct crypto_cipher *cipher = FUNC6(tfm);
	int err;

	FUNC0(cipher, CRYPTO_TFM_REQ_MASK);
	FUNC2(cipher, FUNC4(tfm) &
				CRYPTO_TFM_REQ_MASK);
	err = FUNC3(cipher, key, keylen);
	FUNC5(tfm, FUNC1(cipher) &
				  CRYPTO_TFM_RES_MASK);
	return err;
}