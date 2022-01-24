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
struct crypto_skcipher_spawn {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cts_reqctx {int dummy; } ;
struct crypto_cts_ctx {struct crypto_skcipher* child; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (struct crypto_skcipher*) ; 
 unsigned int FUNC3 (struct crypto_skcipher*) ; 
 unsigned int FUNC4 (struct crypto_skcipher*) ; 
 struct crypto_cts_ctx* FUNC5 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC6 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_skcipher*,unsigned int) ; 
 struct crypto_skcipher* FUNC8 (struct crypto_skcipher_spawn*) ; 
 int FUNC9 () ; 
 struct skcipher_instance* FUNC10 (struct crypto_skcipher*) ; 
 struct crypto_skcipher_spawn* FUNC11 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC12(struct crypto_skcipher *tfm)
{
	struct skcipher_instance *inst = FUNC10(tfm);
	struct crypto_skcipher_spawn *spawn = FUNC11(inst);
	struct crypto_cts_ctx *ctx = FUNC5(tfm);
	struct crypto_skcipher *cipher;
	unsigned reqsize;
	unsigned bsize;
	unsigned align;

	cipher = FUNC8(spawn);
	if (FUNC1(cipher))
		return FUNC2(cipher);

	ctx->child = cipher;

	align = FUNC3(tfm);
	bsize = FUNC4(cipher);
	reqsize = FUNC0(sizeof(struct crypto_cts_reqctx) +
			FUNC6(cipher),
			FUNC9()) +
		  (align & ~(FUNC9() - 1)) + bsize;

	FUNC7(tfm, reqsize);

	return 0;
}