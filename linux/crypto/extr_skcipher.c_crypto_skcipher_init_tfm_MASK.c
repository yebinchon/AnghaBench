#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skcipher_alg {int (* init ) (struct crypto_skcipher*) ;scalar_t__ exit; int /*<<< orphan*/  max_keysize; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_4__ {int /*<<< orphan*/  exit; } ;
struct crypto_skcipher {TYPE_2__ base; int /*<<< orphan*/  keysize; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setkey; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cra_type; } ;

/* Variables and functions */
 struct crypto_skcipher* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  crypto_ablkcipher_type ; 
 int /*<<< orphan*/  crypto_blkcipher_type ; 
 int FUNC1 (struct crypto_tfm*) ; 
 int FUNC2 (struct crypto_tfm*) ; 
 struct skcipher_alg* FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  crypto_skcipher_exit_tfm ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  skcipher_setkey ; 
 int FUNC5 (struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm)
{
	struct crypto_skcipher *skcipher = FUNC0(tfm);
	struct skcipher_alg *alg = FUNC3(skcipher);

	if (tfm->__crt_alg->cra_type == &crypto_blkcipher_type)
		return FUNC2(tfm);

	if (tfm->__crt_alg->cra_type == &crypto_ablkcipher_type)
		return FUNC1(tfm);

	skcipher->setkey = skcipher_setkey;
	skcipher->encrypt = alg->encrypt;
	skcipher->decrypt = alg->decrypt;
	skcipher->ivsize = alg->ivsize;
	skcipher->keysize = alg->max_keysize;

	FUNC4(skcipher);

	if (alg->exit)
		skcipher->base.exit = crypto_skcipher_exit_tfm;

	if (alg->init)
		return alg->init(skcipher);

	return 0;
}