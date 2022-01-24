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
struct TYPE_2__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; scalar_t__ ivsize; } ;
struct skcipher_instance {int /*<<< orphan*/  (* free ) (struct skcipher_instance*) ;TYPE_1__ alg; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct skcipher_instance*) ; 
 int FUNC1 (struct skcipher_instance*) ; 
 int /*<<< orphan*/  crypto_ecb_decrypt ; 
 int /*<<< orphan*/  crypto_ecb_encrypt ; 
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

	inst->alg.ivsize = 0; /* ECB mode doesn't take an IV */

	inst->alg.encrypt = crypto_ecb_encrypt;
	inst->alg.decrypt = crypto_ecb_decrypt;

	err = FUNC4(tmpl, inst);
	if (err)
		inst->free(inst);
	FUNC2(alg);
	return err;
}