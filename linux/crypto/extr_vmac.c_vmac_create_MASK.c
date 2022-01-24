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
struct vmac_tfm_ctx {int dummy; } ;
struct vmac_desc_ctx {int dummy; } ;
struct TYPE_3__ {scalar_t__ cra_blocksize; int cra_ctxsize; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_priority; } ;
struct TYPE_4__ {int descsize; int digestsize; int /*<<< orphan*/  setkey; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  init; TYPE_1__ base; } ;
struct shash_instance {scalar_t__ cra_blocksize; TYPE_2__ alg; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_priority; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int /*<<< orphan*/  name; } ;
struct crypto_alg {scalar_t__ cra_blocksize; TYPE_2__ alg; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_CIPHER ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_MASK ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_SHASH ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct shash_instance*) ; 
 int FUNC1 (struct shash_instance*) ; 
 scalar_t__ VMAC_NONCEBYTES ; 
 int VMAC_TAG_LEN ; 
 int FUNC2 (struct rtattr**,int /*<<< orphan*/ ) ; 
 struct shash_instance* FUNC3 (struct rtattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct shash_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct shash_instance*) ; 
 struct shash_instance* FUNC6 (int /*<<< orphan*/ ,struct shash_instance*) ; 
 int /*<<< orphan*/  FUNC7 (struct shash_instance*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct shash_instance*) ; 
 int FUNC10 (struct crypto_template*,struct shash_instance*) ; 
 int /*<<< orphan*/  vmac_exit_tfm ; 
 int /*<<< orphan*/  vmac_final ; 
 int /*<<< orphan*/  vmac_init ; 
 int /*<<< orphan*/  vmac_init_tfm ; 
 int /*<<< orphan*/  vmac_setkey ; 
 int /*<<< orphan*/  vmac_update ; 

__attribute__((used)) static int FUNC11(struct crypto_template *tmpl, struct rtattr **tb)
{
	struct shash_instance *inst;
	struct crypto_alg *alg;
	int err;

	err = FUNC2(tb, CRYPTO_ALG_TYPE_SHASH);
	if (err)
		return err;

	alg = FUNC3(tb, CRYPTO_ALG_TYPE_CIPHER,
			CRYPTO_ALG_TYPE_MASK);
	if (FUNC0(alg))
		return FUNC1(alg);

	err = -EINVAL;
	if (alg->cra_blocksize != VMAC_NONCEBYTES)
		goto out_put_alg;

	inst = FUNC6(tmpl->name, alg);
	err = FUNC1(inst);
	if (FUNC0(inst))
		goto out_put_alg;

	err = FUNC4(FUNC9(inst), alg,
			FUNC7(inst),
			CRYPTO_ALG_TYPE_MASK);
	if (err)
		goto out_free_inst;

	inst->alg.base.cra_priority = alg->cra_priority;
	inst->alg.base.cra_blocksize = alg->cra_blocksize;
	inst->alg.base.cra_alignmask = alg->cra_alignmask;

	inst->alg.base.cra_ctxsize = sizeof(struct vmac_tfm_ctx);
	inst->alg.base.cra_init = vmac_init_tfm;
	inst->alg.base.cra_exit = vmac_exit_tfm;

	inst->alg.descsize = sizeof(struct vmac_desc_ctx);
	inst->alg.digestsize = VMAC_TAG_LEN / 8;
	inst->alg.init = vmac_init;
	inst->alg.update = vmac_update;
	inst->alg.final = vmac_final;
	inst->alg.setkey = vmac_setkey;

	err = FUNC10(tmpl, inst);
	if (err) {
out_free_inst:
		FUNC8(FUNC7(inst));
	}

out_put_alg:
	FUNC5(alg);
	return err;
}