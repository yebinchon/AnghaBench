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
struct skcipher_alg {unsigned int min_keysize; unsigned int max_keysize; int (* setkey ) (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ;} ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_NEED_KEY ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct skcipher_alg* FUNC0 (struct crypto_skcipher*) ; 
 unsigned long FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 int FUNC5 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC6 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct crypto_skcipher *tfm, const u8 *key,
			   unsigned int keylen)
{
	struct skcipher_alg *cipher = FUNC0(tfm);
	unsigned long alignmask = FUNC1(tfm);
	int err;

	if (keylen < cipher->min_keysize || keylen > cipher->max_keysize) {
		FUNC3(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	if ((unsigned long)key & alignmask)
		err = FUNC5(tfm, key, keylen);
	else
		err = cipher->setkey(tfm, key, keylen);

	if (FUNC7(err)) {
		FUNC4(tfm);
		return err;
	}

	FUNC2(tfm, CRYPTO_TFM_NEED_KEY);
	return 0;
}