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
struct rctx {int dummy; } ;
struct priv {struct crypto_skcipher* child; } ;
struct crypto_skcipher_spawn {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct priv* FUNC2 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*,scalar_t__) ; 
 struct crypto_skcipher* FUNC5 (struct crypto_skcipher_spawn*) ; 
 struct skcipher_instance* FUNC6 (struct crypto_skcipher*) ; 
 struct crypto_skcipher_spawn* FUNC7 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC8(struct crypto_skcipher *tfm)
{
	struct skcipher_instance *inst = FUNC6(tfm);
	struct crypto_skcipher_spawn *spawn = FUNC7(inst);
	struct priv *ctx = FUNC2(tfm);
	struct crypto_skcipher *cipher;

	cipher = FUNC5(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = cipher;

	FUNC4(tfm, FUNC3(cipher) +
					 sizeof(struct rctx));

	return 0;
}