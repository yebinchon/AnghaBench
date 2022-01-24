#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int cra_ctxsize; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_blocksize; } ;
struct TYPE_6__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  init; int /*<<< orphan*/  setkey; TYPE_2__ base; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  max_keysize; int /*<<< orphan*/  min_keysize; } ;
struct skcipher_instance {TYPE_3__ alg; int /*<<< orphan*/  free; } ;
struct skcipher_ctx_simple {int dummy; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int /*<<< orphan*/  name; } ;
struct crypto_spawn {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cia_max_keysize; int /*<<< orphan*/  cia_min_keysize; } ;
struct crypto_attr_type {int type; int mask; int /*<<< orphan*/  cra_blocksize; TYPE_1__ cra_cipher; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_alignmask; } ;
struct crypto_alg {int type; int mask; int /*<<< orphan*/  cra_blocksize; TYPE_1__ cra_cipher; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_alignmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_CIPHER ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 int CRYPTO_ALG_TYPE_SKCIPHER ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct skcipher_instance* FUNC0 (struct crypto_attr_type*) ; 
 struct skcipher_instance* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct crypto_attr_type*) ; 
 struct crypto_attr_type* FUNC3 (struct rtattr**,int /*<<< orphan*/ ,int) ; 
 struct crypto_attr_type* FUNC4 (struct rtattr**) ; 
 int FUNC5 (struct crypto_spawn*,struct crypto_attr_type*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_attr_type*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_attr_type*) ; 
 int FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_instance*) ; 
 struct skcipher_instance* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_instance*) ; 
 int /*<<< orphan*/  skcipher_exit_tfm_simple ; 
 int /*<<< orphan*/  skcipher_free_instance_simple ; 
 int /*<<< orphan*/  skcipher_init_tfm_simple ; 
 struct crypto_spawn* FUNC12 (struct skcipher_instance*) ; 
 int /*<<< orphan*/  skcipher_setkey_simple ; 

struct skcipher_instance *
FUNC13(struct crypto_template *tmpl, struct rtattr **tb,
			       struct crypto_alg **cipher_alg_ret)
{
	struct crypto_attr_type *algt;
	struct crypto_alg *cipher_alg;
	struct skcipher_instance *inst;
	struct crypto_spawn *spawn;
	u32 mask;
	int err;

	algt = FUNC4(tb);
	if (FUNC2(algt))
		return FUNC0(algt);

	if ((algt->type ^ CRYPTO_ALG_TYPE_SKCIPHER) & algt->mask)
		return FUNC1(-EINVAL);

	mask = CRYPTO_ALG_TYPE_MASK |
		FUNC8(algt->type, algt->mask,
				    CRYPTO_ALG_NEED_FALLBACK);

	cipher_alg = FUNC3(tb, CRYPTO_ALG_TYPE_CIPHER, mask);
	if (FUNC2(cipher_alg))
		return FUNC0(cipher_alg);

	inst = FUNC10(sizeof(*inst) + sizeof(*spawn), GFP_KERNEL);
	if (!inst) {
		err = -ENOMEM;
		goto err_put_cipher_alg;
	}
	spawn = FUNC12(inst);

	err = FUNC6(FUNC11(inst), tmpl->name,
				  cipher_alg);
	if (err)
		goto err_free_inst;

	err = FUNC5(spawn, cipher_alg,
				FUNC11(inst),
				CRYPTO_ALG_TYPE_MASK);
	if (err)
		goto err_free_inst;
	inst->free = skcipher_free_instance_simple;

	/* Default algorithm properties, can be overridden */
	inst->alg.base.cra_blocksize = cipher_alg->cra_blocksize;
	inst->alg.base.cra_alignmask = cipher_alg->cra_alignmask;
	inst->alg.base.cra_priority = cipher_alg->cra_priority;
	inst->alg.min_keysize = cipher_alg->cra_cipher.cia_min_keysize;
	inst->alg.max_keysize = cipher_alg->cra_cipher.cia_max_keysize;
	inst->alg.ivsize = cipher_alg->cra_blocksize;

	/* Use skcipher_ctx_simple by default, can be overridden */
	inst->alg.base.cra_ctxsize = sizeof(struct skcipher_ctx_simple);
	inst->alg.setkey = skcipher_setkey_simple;
	inst->alg.init = skcipher_init_tfm_simple;
	inst->alg.exit = skcipher_exit_tfm_simple;

	*cipher_alg_ret = cipher_alg;
	return inst;

err_free_inst:
	FUNC9(inst);
err_put_cipher_alg:
	FUNC7(cipher_alg);
	return FUNC1(err);
}