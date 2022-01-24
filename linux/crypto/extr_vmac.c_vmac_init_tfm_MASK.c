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
struct vmac_tfm_ctx {struct crypto_cipher* cipher; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_cipher*) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 struct crypto_spawn* FUNC2 (struct crypto_instance*) ; 
 struct crypto_cipher* FUNC3 (struct crypto_spawn*) ; 
 struct crypto_instance* FUNC4 (struct crypto_tfm*) ; 
 struct vmac_tfm_ctx* FUNC5 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = FUNC4(tfm);
	struct crypto_spawn *spawn = FUNC2(inst);
	struct vmac_tfm_ctx *tctx = FUNC5(tfm);
	struct crypto_cipher *cipher;

	cipher = FUNC3(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	tctx->cipher = cipher;
	return 0;
}