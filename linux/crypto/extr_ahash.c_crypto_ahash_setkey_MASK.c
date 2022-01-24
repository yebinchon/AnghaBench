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
struct crypto_ahash {int (* setkey ) (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_NEED_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned long FUNC2 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct crypto_ahash *tfm, const u8 *key,
			unsigned int keylen)
{
	unsigned long alignmask = FUNC2(tfm);
	int err;

	if ((unsigned long)key & alignmask)
		err = FUNC1(tfm, key, keylen);
	else
		err = tfm->setkey(tfm, key, keylen);

	if (FUNC5(err)) {
		FUNC0(tfm);
		return err;
	}

	FUNC3(tfm, CRYPTO_TFM_NEED_KEY);
	return 0;
}