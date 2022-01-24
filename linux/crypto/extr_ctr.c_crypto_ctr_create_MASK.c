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
struct TYPE_3__ {int cra_blocksize; } ;
struct TYPE_4__ {int chunksize; void* decrypt; void* encrypt; TYPE_1__ base; } ;
struct skcipher_instance {int /*<<< orphan*/  (* free ) (struct skcipher_instance*) ;TYPE_2__ alg; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_alg {int cra_blocksize; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct skcipher_instance*) ; 
 int FUNC1 (struct skcipher_instance*) ; 
 void* crypto_ctr_crypt ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 struct skcipher_instance* FUNC3 (struct crypto_template*,struct rtattr**,struct crypto_alg**) ; 
 int FUNC4 (struct crypto_template*,struct skcipher_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC6(struct crypto_template *tmpl, struct rtattr **tb)
{
	struct skcipher_instance *inst;
	struct crypto_alg *alg;
	int err;

	inst = FUNC3(tmpl, tb, &alg);
	if (FUNC0(inst))
		return FUNC1(inst);

	/* Block size must be >= 4 bytes. */
	err = -EINVAL;
	if (alg->cra_blocksize < 4)
		goto out_free_inst;

	/* If this is false we'd fail the alignment of crypto_inc. */
	if (alg->cra_blocksize % 4)
		goto out_free_inst;

	/* CTR mode is a stream cipher. */
	inst->alg.base.cra_blocksize = 1;

	/*
	 * To simplify the implementation, configure the skcipher walk to only
	 * give a partial block at the very end, never earlier.
	 */
	inst->alg.chunksize = alg->cra_blocksize;

	inst->alg.encrypt = crypto_ctr_crypt;
	inst->alg.decrypt = crypto_ctr_crypt;

	err = FUNC4(tmpl, inst);
	if (err)
		goto out_free_inst;
	goto out_put_alg;

out_free_inst:
	inst->free(inst);
out_put_alg:
	FUNC2(alg);
	return err;
}