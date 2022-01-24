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
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_NEED_KEY ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*,int) ; 
 int FUNC3 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_ablkcipher** FUNC5 (struct crypto_skcipher*) ; 
 int FUNC6 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_skcipher*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct crypto_skcipher *tfm,
				      const u8 *key, unsigned int keylen)
{
	struct crypto_ablkcipher **ctx = FUNC5(tfm);
	struct crypto_ablkcipher *ablkcipher = *ctx;
	int err;

	FUNC0(ablkcipher, ~0);
	FUNC2(ablkcipher,
				    FUNC6(tfm) &
				    CRYPTO_TFM_REQ_MASK);
	err = FUNC3(ablkcipher, key, keylen);
	FUNC7(tfm,
				  FUNC1(ablkcipher) &
				  CRYPTO_TFM_RES_MASK);
	if (FUNC9(err)) {
		FUNC8(tfm);
		return err;
	}

	FUNC4(tfm, CRYPTO_TFM_NEED_KEY);
	return 0;
}