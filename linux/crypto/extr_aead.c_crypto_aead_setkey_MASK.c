#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int (* setkey ) (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_NEED_KEY ; 
 TYPE_1__* FUNC0 (struct crypto_aead*) ; 
 unsigned long FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC5 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct crypto_aead *tfm,
		       const u8 *key, unsigned int keylen)
{
	unsigned long alignmask = FUNC1(tfm);
	int err;

	if ((unsigned long)key & alignmask)
		err = FUNC4(tfm, key, keylen);
	else
		err = FUNC0(tfm)->setkey(tfm, key, keylen);

	if (FUNC6(err)) {
		FUNC3(tfm, CRYPTO_TFM_NEED_KEY);
		return err;
	}

	FUNC2(tfm, CRYPTO_TFM_NEED_KEY);
	return 0;
}