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
struct crypto_rfc3686_req_ctx {int dummy; } ;
struct crypto_rfc3686_ctx {struct crypto_skcipher* child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 unsigned long FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_rfc3686_ctx* FUNC3 (struct crypto_skcipher*) ; 
 unsigned long FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_skcipher*,unsigned int) ; 
 struct crypto_skcipher* FUNC6 (struct crypto_skcipher_spawn*) ; 
 int FUNC7 () ; 
 struct skcipher_instance* FUNC8 (struct crypto_skcipher*) ; 
 struct crypto_skcipher_spawn* FUNC9 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC10(struct crypto_skcipher *tfm)
{
	struct skcipher_instance *inst = FUNC8(tfm);
	struct crypto_skcipher_spawn *spawn = FUNC9(inst);
	struct crypto_rfc3686_ctx *ctx = FUNC3(tfm);
	struct crypto_skcipher *cipher;
	unsigned long align;
	unsigned int reqsize;

	cipher = FUNC6(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = cipher;

	align = FUNC2(tfm);
	align &= ~(FUNC7() - 1);
	reqsize = align + sizeof(struct crypto_rfc3686_req_ctx) +
		  FUNC4(cipher);
	FUNC5(tfm, reqsize);

	return 0;
}