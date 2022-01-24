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
struct skcipher_instance {int dummy; } ;
struct skcipher_ctx_simple {struct crypto_cipher* cipher; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_cipher*) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 struct skcipher_ctx_simple* FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_cipher* FUNC3 (struct crypto_spawn*) ; 
 struct skcipher_instance* FUNC4 (struct crypto_skcipher*) ; 
 struct crypto_spawn* FUNC5 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC6(struct crypto_skcipher *tfm)
{
	struct skcipher_instance *inst = FUNC4(tfm);
	struct crypto_spawn *spawn = FUNC5(inst);
	struct skcipher_ctx_simple *ctx = FUNC2(tfm);
	struct crypto_cipher *cipher;

	cipher = FUNC3(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->cipher = cipher;
	return 0;
}