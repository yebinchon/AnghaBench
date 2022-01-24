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
struct des3_ede_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_WEAK_KEY ; 
 int EINVAL ; 
 int ENOKEY ; 
 struct des3_ede_ctx* FUNC0 (struct crypto_tfm*) ; 
 int FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct des3_ede_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct des3_ede_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm, const u8 *key,
			   unsigned int keylen)
{
	struct des3_ede_ctx *dctx = FUNC0(tfm);
	int err;

	err = FUNC3(dctx, key, keylen);
	if (err == -ENOKEY) {
		if (FUNC1(tfm) & CRYPTO_TFM_REQ_FORBID_WEAK_KEYS)
			err = -EINVAL;
		else
			err = 0;
	}

	if (err) {
		FUNC4(dctx, 0, sizeof(*dctx));
		FUNC2(tfm, CRYPTO_TFM_RES_WEAK_KEY);
	}
	return err;
}