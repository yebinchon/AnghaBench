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
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_alg {unsigned int min_keysize; unsigned int max_keysize; int (* setkey ) (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct ablkcipher_alg* FUNC0 (struct crypto_ablkcipher*) ; 
 unsigned long FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC4 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct crypto_ablkcipher *tfm, const u8 *key,
		  unsigned int keylen)
{
	struct ablkcipher_alg *cipher = FUNC0(tfm);
	unsigned long alignmask = FUNC1(tfm);

	if (keylen < cipher->min_keysize || keylen > cipher->max_keysize) {
		FUNC2(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	if ((unsigned long)key & alignmask)
		return FUNC3(tfm, key, keylen);

	return cipher->setkey(tfm, key, keylen);
}