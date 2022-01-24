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
struct crypto_skcipher {int /*<<< orphan*/  keysize; scalar_t__ reqsize; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setkey; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_keysize; } ;
struct crypto_alg {TYPE_1__ cra_ablkcipher; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct crypto_tfm*) ; 
 int FUNC1 (struct crypto_tfm*) ; 
 struct crypto_ablkcipher* FUNC2 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC3 (struct crypto_alg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_skcipher* FUNC4 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC6 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  crypto_exit_skcipher_ops_ablkcipher ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_alg*) ; 
 struct crypto_ablkcipher** FUNC9 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  skcipher_decrypt_ablkcipher ; 
 int /*<<< orphan*/  skcipher_encrypt_ablkcipher ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  skcipher_setkey_ablkcipher ; 

__attribute__((used)) static int FUNC11(struct crypto_tfm *tfm)
{
	struct crypto_alg *calg = tfm->__crt_alg;
	struct crypto_skcipher *skcipher = FUNC4(tfm);
	struct crypto_ablkcipher **ctx = FUNC9(tfm);
	struct crypto_ablkcipher *ablkcipher;
	struct crypto_tfm *abtfm;

	if (!FUNC7(calg))
		return -EAGAIN;

	abtfm = FUNC3(calg, 0, 0);
	if (FUNC0(abtfm)) {
		FUNC8(calg);
		return FUNC1(abtfm);
	}

	ablkcipher = FUNC2(abtfm);
	*ctx = ablkcipher;
	tfm->exit = crypto_exit_skcipher_ops_ablkcipher;

	skcipher->setkey = skcipher_setkey_ablkcipher;
	skcipher->encrypt = skcipher_encrypt_ablkcipher;
	skcipher->decrypt = skcipher_decrypt_ablkcipher;

	skcipher->ivsize = FUNC5(ablkcipher);
	skcipher->reqsize = FUNC6(ablkcipher) +
			    sizeof(struct ablkcipher_request);
	skcipher->keysize = calg->cra_ablkcipher.max_keysize;

	FUNC10(skcipher);

	return 0;
}