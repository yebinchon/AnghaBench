#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* cra_name; int cra_blocksize; char* cra_driver_name; int cra_flags; int cra_priority; int cra_alignmask; } ;
struct skcipher_alg {TYPE_2__ base; } ;
struct rtattr {int dummy; } ;
struct TYPE_5__ {char* cra_name; char* cra_driver_name; int cra_priority; int cra_alignmask; } ;
struct hash_alg_common {int digestsize; TYPE_1__ base; } ;
struct crypto_template {int dummy; } ;
struct crypto_ccm_ctx {int dummy; } ;
struct crypto_attr_type {int type; int mask; } ;
struct crypto_alg {int type; int mask; } ;
struct ccm_instance_ctx {int /*<<< orphan*/  mac; int /*<<< orphan*/  ctr; } ;
struct TYPE_7__ {int cra_flags; int cra_priority; int cra_blocksize; int cra_alignmask; int cra_ctxsize; int /*<<< orphan*/  cra_driver_name; int /*<<< orphan*/  cra_name; } ;
struct TYPE_8__ {int ivsize; int maxauthsize; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setauthsize; int /*<<< orphan*/  setkey; int /*<<< orphan*/  exit; int /*<<< orphan*/  init; TYPE_3__ base; int /*<<< orphan*/  chunksize; } ;
struct aead_instance {int /*<<< orphan*/  free; TYPE_4__ alg; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_TYPE_AEAD ; 
 int CRYPTO_ALG_TYPE_AHASH_MASK ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_HASH ; 
 scalar_t__ CRYPTO_MAX_ALG_NAME ; 
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_attr_type*) ; 
 int FUNC1 (struct crypto_attr_type*) ; 
 struct hash_alg_common* FUNC2 (struct crypto_attr_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_instance*) ; 
 struct ccm_instance_ctx* FUNC4 (struct aead_instance*) ; 
 int FUNC5 (struct crypto_template*,struct aead_instance*) ; 
 int /*<<< orphan*/  crypto_ahash_type ; 
 int /*<<< orphan*/  crypto_ccm_decrypt ; 
 int /*<<< orphan*/  crypto_ccm_encrypt ; 
 int /*<<< orphan*/  crypto_ccm_exit_tfm ; 
 int /*<<< orphan*/  crypto_ccm_free ; 
 int /*<<< orphan*/  crypto_ccm_init_tfm ; 
 int /*<<< orphan*/  crypto_ccm_setauthsize ; 
 int /*<<< orphan*/  crypto_ccm_setkey ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct crypto_attr_type* FUNC8 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct crypto_attr_type* FUNC9 (struct rtattr**) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct hash_alg_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_attr_type*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct skcipher_alg*) ; 
 int FUNC16 (struct skcipher_alg*) ; 
 struct skcipher_alg* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct aead_instance*) ; 
 struct aead_instance* FUNC19 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__,char*,char*,...) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 scalar_t__ FUNC22 (char*,char*,int) ; 

__attribute__((used)) static int FUNC23(struct crypto_template *tmpl,
				    struct rtattr **tb,
				    const char *ctr_name,
				    const char *mac_name)
{
	struct crypto_attr_type *algt;
	struct aead_instance *inst;
	struct skcipher_alg *ctr;
	struct crypto_alg *mac_alg;
	struct hash_alg_common *mac;
	struct ccm_instance_ctx *ictx;
	int err;

	algt = FUNC9(tb);
	if (FUNC0(algt))
		return FUNC1(algt);

	if ((algt->type ^ CRYPTO_ALG_TYPE_AEAD) & algt->mask)
		return -EINVAL;

	mac_alg = FUNC8(mac_name, &crypto_ahash_type,
				  CRYPTO_ALG_TYPE_HASH,
				  CRYPTO_ALG_TYPE_AHASH_MASK |
				  CRYPTO_ALG_ASYNC);
	if (FUNC0(mac_alg))
		return FUNC1(mac_alg);

	mac = FUNC2(mac_alg);
	err = -EINVAL;
	if (FUNC22(mac->base.cra_name, "cbcmac(", 7) != 0 ||
	    mac->digestsize != 16)
		goto out_put_mac;

	inst = FUNC19(sizeof(*inst) + sizeof(*ictx), GFP_KERNEL);
	err = -ENOMEM;
	if (!inst)
		goto out_put_mac;

	ictx = FUNC4(inst);
	err = FUNC11(&ictx->mac, mac,
				      FUNC3(inst));
	if (err)
		goto err_free_inst;

	FUNC14(&ictx->ctr, FUNC3(inst));
	err = FUNC10(&ictx->ctr, ctr_name, 0,
				   FUNC13(algt->type,
							algt->mask));
	if (err)
		goto err_drop_mac;

	ctr = FUNC17(&ictx->ctr);

	/* The skcipher algorithm must be CTR mode, using 16-byte blocks. */
	err = -EINVAL;
	if (FUNC22(ctr->base.cra_name, "ctr(", 4) != 0 ||
	    FUNC16(ctr) != 16 ||
	    ctr->base.cra_blocksize != 1)
		goto err_drop_ctr;

	/* ctr and cbcmac must use the same underlying block cipher. */
	if (FUNC21(ctr->base.cra_name + 4, mac->base.cra_name + 7) != 0)
		goto err_drop_ctr;

	err = -ENAMETOOLONG;
	if (FUNC20(inst->alg.base.cra_name, CRYPTO_MAX_ALG_NAME,
		     "ccm(%s", ctr->base.cra_name + 4) >= CRYPTO_MAX_ALG_NAME)
		goto err_drop_ctr;

	if (FUNC20(inst->alg.base.cra_driver_name, CRYPTO_MAX_ALG_NAME,
		     "ccm_base(%s,%s)", ctr->base.cra_driver_name,
		     mac->base.cra_driver_name) >= CRYPTO_MAX_ALG_NAME)
		goto err_drop_ctr;

	inst->alg.base.cra_flags = ctr->base.cra_flags & CRYPTO_ALG_ASYNC;
	inst->alg.base.cra_priority = (mac->base.cra_priority +
				       ctr->base.cra_priority) / 2;
	inst->alg.base.cra_blocksize = 1;
	inst->alg.base.cra_alignmask = mac->base.cra_alignmask |
				       ctr->base.cra_alignmask;
	inst->alg.ivsize = 16;
	inst->alg.chunksize = FUNC15(ctr);
	inst->alg.maxauthsize = 16;
	inst->alg.base.cra_ctxsize = sizeof(struct crypto_ccm_ctx);
	inst->alg.init = crypto_ccm_init_tfm;
	inst->alg.exit = crypto_ccm_exit_tfm;
	inst->alg.setkey = crypto_ccm_setkey;
	inst->alg.setauthsize = crypto_ccm_setauthsize;
	inst->alg.encrypt = crypto_ccm_encrypt;
	inst->alg.decrypt = crypto_ccm_decrypt;

	inst->free = crypto_ccm_free;

	err = FUNC5(tmpl, inst);
	if (err)
		goto err_drop_ctr;

out_put_mac:
	FUNC12(mac_alg);
	return err;

err_drop_ctr:
	FUNC7(&ictx->ctr);
err_drop_mac:
	FUNC6(&ictx->mac);
err_free_inst:
	FUNC18(inst);
	goto out_put_mac;
}