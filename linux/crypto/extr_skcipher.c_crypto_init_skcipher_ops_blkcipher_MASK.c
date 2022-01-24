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
struct crypto_tfm {int /*<<< orphan*/  exit; struct crypto_alg* __crt_alg; } ;
struct crypto_skcipher {int /*<<< orphan*/  keysize; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setkey; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_keysize; } ;
struct crypto_alg {TYPE_1__ cra_blkcipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_BLKCIPHER ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_MASK ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct crypto_tfm*) ; 
 int FUNC1 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC2 (struct crypto_alg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_blkcipher* FUNC3 (struct crypto_tfm*) ; 
 struct crypto_skcipher* FUNC4 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  crypto_exit_skcipher_ops_blkcipher ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_alg*) ; 
 struct crypto_blkcipher** FUNC8 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  skcipher_decrypt_blkcipher ; 
 int /*<<< orphan*/  skcipher_encrypt_blkcipher ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  skcipher_setkey_blkcipher ; 

__attribute__((used)) static int FUNC10(struct crypto_tfm *tfm)
{
	struct crypto_alg *calg = tfm->__crt_alg;
	struct crypto_skcipher *skcipher = FUNC4(tfm);
	struct crypto_blkcipher **ctx = FUNC8(tfm);
	struct crypto_blkcipher *blkcipher;
	struct crypto_tfm *btfm;

	if (!FUNC6(calg))
		return -EAGAIN;

	btfm = FUNC2(calg, CRYPTO_ALG_TYPE_BLKCIPHER,
					CRYPTO_ALG_TYPE_MASK);
	if (FUNC0(btfm)) {
		FUNC7(calg);
		return FUNC1(btfm);
	}

	blkcipher = FUNC3(btfm);
	*ctx = blkcipher;
	tfm->exit = crypto_exit_skcipher_ops_blkcipher;

	skcipher->setkey = skcipher_setkey_blkcipher;
	skcipher->encrypt = skcipher_encrypt_blkcipher;
	skcipher->decrypt = skcipher_decrypt_blkcipher;

	skcipher->ivsize = FUNC5(blkcipher);
	skcipher->keysize = calg->cra_blkcipher.max_keysize;

	FUNC9(skcipher);

	return 0;
}