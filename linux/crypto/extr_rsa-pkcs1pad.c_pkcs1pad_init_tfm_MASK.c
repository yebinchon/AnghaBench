#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pkcs1pad_inst_ctx {int /*<<< orphan*/  spawn; } ;
struct pkcs1pad_ctx {struct crypto_akcipher* child; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_akcipher*) ; 
 int FUNC1 (struct crypto_akcipher*) ; 
 struct akcipher_instance* FUNC2 (struct crypto_akcipher*) ; 
 struct pkcs1pad_inst_ctx* FUNC3 (struct akcipher_instance*) ; 
 struct pkcs1pad_ctx* FUNC4 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct crypto_akcipher *tfm)
{
	struct akcipher_instance *inst = FUNC2(tfm);
	struct pkcs1pad_inst_ctx *ictx = FUNC3(inst);
	struct pkcs1pad_ctx *ctx = FUNC4(tfm);
	struct crypto_akcipher *child_tfm;

	child_tfm = FUNC5(&ictx->spawn);
	if (FUNC0(child_tfm))
		return FUNC1(child_tfm);

	ctx->child = child_tfm;
	return 0;
}