#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skcipher_request {int dummy; } ;
struct simd_skcipher_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {struct crypto_skcipher base; } ;

/* Variables and functions */
 struct crypto_skcipher* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct simd_skcipher_ctx* FUNC3 (struct crypto_skcipher*) ; 
 int FUNC4 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC5 (struct skcipher_request*) ; 
 scalar_t__ FUNC6 () ; 
 struct skcipher_request* FUNC7 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC9(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC5(req);
	struct simd_skcipher_ctx *ctx = FUNC3(tfm);
	struct skcipher_request *subreq;
	struct crypto_skcipher *child;

	subreq = FUNC7(req);
	*subreq = *req;

	if (!FUNC2() ||
	    (FUNC6() && FUNC1(ctx->cryptd_tfm)))
		child = &ctx->cryptd_tfm->base;
	else
		child = FUNC0(ctx->cryptd_tfm);

	FUNC8(subreq, child);

	return FUNC4(subreq);
}