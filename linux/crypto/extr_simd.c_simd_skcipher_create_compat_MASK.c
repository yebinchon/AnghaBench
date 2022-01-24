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
struct TYPE_2__ {int cra_flags; int cra_ctxsize; int /*<<< orphan*/  cra_module; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_blocksize; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_driver_name; int /*<<< orphan*/  cra_name; } ;
struct skcipher_alg {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setkey; int /*<<< orphan*/  exit; int /*<<< orphan*/  init; int /*<<< orphan*/  max_keysize; int /*<<< orphan*/  min_keysize; int /*<<< orphan*/  chunksize; int /*<<< orphan*/  ivsize; TYPE_1__ base; } ;
struct simd_skcipher_ctx {int dummy; } ;
struct simd_skcipher_alg {char const* ialg_name; struct skcipher_alg alg; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_INTERNAL ; 
 scalar_t__ CRYPTO_MAX_ALG_NAME ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 struct simd_skcipher_alg* FUNC0 (struct crypto_skcipher*) ; 
 struct simd_skcipher_alg* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 int FUNC5 (struct skcipher_alg*) ; 
 struct skcipher_alg* FUNC6 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct simd_skcipher_alg*) ; 
 struct simd_skcipher_alg* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simd_skcipher_decrypt ; 
 int /*<<< orphan*/  simd_skcipher_encrypt ; 
 int /*<<< orphan*/  simd_skcipher_exit ; 
 int /*<<< orphan*/  simd_skcipher_init ; 
 int /*<<< orphan*/  simd_skcipher_setkey ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*,char const*) ; 

struct simd_skcipher_alg *FUNC10(const char *algname,
						      const char *drvname,
						      const char *basename)
{
	struct simd_skcipher_alg *salg;
	struct crypto_skcipher *tfm;
	struct skcipher_alg *ialg;
	struct skcipher_alg *alg;
	int err;

	tfm = FUNC3(basename, CRYPTO_ALG_INTERNAL,
				    CRYPTO_ALG_INTERNAL | CRYPTO_ALG_ASYNC);
	if (FUNC2(tfm))
		return FUNC0(tfm);

	ialg = FUNC6(tfm);

	salg = FUNC8(sizeof(*salg), GFP_KERNEL);
	if (!salg) {
		salg = FUNC1(-ENOMEM);
		goto out_put_tfm;
	}

	salg->ialg_name = basename;
	alg = &salg->alg;

	err = -ENAMETOOLONG;
	if (FUNC9(alg->base.cra_name, CRYPTO_MAX_ALG_NAME, "%s", algname) >=
	    CRYPTO_MAX_ALG_NAME)
		goto out_free_salg;

	if (FUNC9(alg->base.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
		     drvname) >= CRYPTO_MAX_ALG_NAME)
		goto out_free_salg;

	alg->base.cra_flags = CRYPTO_ALG_ASYNC;
	alg->base.cra_priority = ialg->base.cra_priority;
	alg->base.cra_blocksize = ialg->base.cra_blocksize;
	alg->base.cra_alignmask = ialg->base.cra_alignmask;
	alg->base.cra_module = ialg->base.cra_module;
	alg->base.cra_ctxsize = sizeof(struct simd_skcipher_ctx);

	alg->ivsize = ialg->ivsize;
	alg->chunksize = ialg->chunksize;
	alg->min_keysize = ialg->min_keysize;
	alg->max_keysize = ialg->max_keysize;

	alg->init = simd_skcipher_init;
	alg->exit = simd_skcipher_exit;

	alg->setkey = simd_skcipher_setkey;
	alg->encrypt = simd_skcipher_encrypt;
	alg->decrypt = simd_skcipher_decrypt;

	err = FUNC5(alg);
	if (err)
		goto out_free_salg;

out_put_tfm:
	FUNC4(tfm);
	return salg;

out_free_salg:
	FUNC7(salg);
	salg = FUNC1(err);
	goto out_put_tfm;
}