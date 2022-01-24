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
typedef  int /*<<< orphan*/  u32 ;
struct rtattr {int dummy; } ;
struct pcrypt_instance_ctx {int /*<<< orphan*/  spawn; } ;
struct pcrypt_aead_ctx {int dummy; } ;
struct crypto_template {int dummy; } ;
typedef  char const crypto_attr_type ;
struct TYPE_3__ {int cra_ctxsize; int /*<<< orphan*/  cra_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setauthsize; int /*<<< orphan*/  setkey; int /*<<< orphan*/  exit; int /*<<< orphan*/  init; TYPE_1__ base; int /*<<< orphan*/  maxauthsize; int /*<<< orphan*/  ivsize; } ;
struct aead_instance {int /*<<< orphan*/  free; TYPE_2__ alg; } ;
struct aead_alg {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_instance*) ; 
 struct pcrypt_instance_ctx* FUNC3 (struct aead_instance*) ; 
 int FUNC4 (struct crypto_template*,struct aead_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_alg*) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_alg*) ; 
 char* FUNC7 (struct rtattr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (struct rtattr**) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct aead_alg* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct aead_instance*) ; 
 struct aead_instance* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcrypt_aead_decrypt ; 
 int /*<<< orphan*/  pcrypt_aead_encrypt ; 
 int /*<<< orphan*/  pcrypt_aead_exit_tfm ; 
 int /*<<< orphan*/  pcrypt_aead_init_tfm ; 
 int /*<<< orphan*/  pcrypt_aead_setauthsize ; 
 int /*<<< orphan*/  pcrypt_aead_setkey ; 
 int /*<<< orphan*/  pcrypt_free ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct crypto_template *tmpl, struct rtattr **tb,
			      u32 type, u32 mask)
{
	struct pcrypt_instance_ctx *ctx;
	struct crypto_attr_type *algt;
	struct aead_instance *inst;
	struct aead_alg *alg;
	const char *name;
	int err;

	algt = FUNC9(tb);
	if (FUNC0(algt))
		return FUNC1(algt);

	name = FUNC7(tb[1]);
	if (FUNC0(name))
		return FUNC1(name);

	inst = FUNC14(sizeof(*inst) + sizeof(*ctx), GFP_KERNEL);
	if (!inst)
		return -ENOMEM;

	ctx = FUNC3(inst);
	FUNC11(&ctx->spawn, FUNC2(inst));

	err = FUNC10(&ctx->spawn, name, 0, 0);
	if (err)
		goto out_free_inst;

	alg = FUNC12(&ctx->spawn);
	err = FUNC15(FUNC2(inst), &alg->base);
	if (err)
		goto out_drop_aead;

	inst->alg.base.cra_flags = CRYPTO_ALG_ASYNC;

	inst->alg.ivsize = FUNC5(alg);
	inst->alg.maxauthsize = FUNC6(alg);

	inst->alg.base.cra_ctxsize = sizeof(struct pcrypt_aead_ctx);

	inst->alg.init = pcrypt_aead_init_tfm;
	inst->alg.exit = pcrypt_aead_exit_tfm;

	inst->alg.setkey = pcrypt_aead_setkey;
	inst->alg.setauthsize = pcrypt_aead_setauthsize;
	inst->alg.encrypt = pcrypt_aead_encrypt;
	inst->alg.decrypt = pcrypt_aead_decrypt;

	inst->free = pcrypt_free;

	err = FUNC4(tmpl, inst);
	if (err)
		goto out_drop_aead;

out:
	return err;

out_drop_aead:
	FUNC8(&ctx->spawn);
out_free_inst:
	FUNC13(inst);
	goto out;
}