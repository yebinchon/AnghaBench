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
struct shash_alg {int (* setkey ) (struct crypto_shash*,int /*<<< orphan*/  const*,unsigned int) ;} ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_NEED_KEY ; 
 struct shash_alg* FUNC0 (struct crypto_shash*) ; 
 unsigned long FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_shash*,struct shash_alg*) ; 
 int FUNC4 (struct crypto_shash*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC5 (struct crypto_shash*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct crypto_shash *tfm, const u8 *key,
			unsigned int keylen)
{
	struct shash_alg *shash = FUNC0(tfm);
	unsigned long alignmask = FUNC1(tfm);
	int err;

	if ((unsigned long)key & alignmask)
		err = FUNC4(tfm, key, keylen);
	else
		err = shash->setkey(tfm, key, keylen);

	if (FUNC6(err)) {
		FUNC3(tfm, shash);
		return err;
	}

	FUNC2(tfm, CRYPTO_TFM_NEED_KEY);
	return 0;
}