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
struct skcipher_request {int dummy; } ;
struct skcipher_instance {int dummy; } ;
struct TYPE_3__ {struct crypto_skcipher* skcipher; } ;
struct essiv_tfm_ctx {TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  skcipher_spawn; } ;
struct essiv_instance_ctx {TYPE_2__ u; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*) ; 
 struct essiv_tfm_ctx* FUNC3 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_skcipher*,scalar_t__) ; 
 struct crypto_skcipher* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct essiv_instance_ctx*,struct essiv_tfm_ctx*) ; 
 struct skcipher_instance* FUNC8 (struct crypto_skcipher*) ; 
 struct essiv_instance_ctx* FUNC9 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC10(struct crypto_skcipher *tfm)
{
	struct skcipher_instance *inst = FUNC8(tfm);
	struct essiv_instance_ctx *ictx = FUNC9(inst);
	struct essiv_tfm_ctx *tctx = FUNC3(tfm);
	struct crypto_skcipher *skcipher;
	int err;

	skcipher = FUNC6(&ictx->u.skcipher_spawn);
	if (FUNC0(skcipher))
		return FUNC1(skcipher);

	FUNC5(tfm, sizeof(struct skcipher_request) +
				         FUNC4(skcipher));

	err = FUNC7(ictx, tctx);
	if (err) {
		FUNC2(skcipher);
		return err;
	}

	tctx->u.skcipher = skcipher;
	return 0;
}