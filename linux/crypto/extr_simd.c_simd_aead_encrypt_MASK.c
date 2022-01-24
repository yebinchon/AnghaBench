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
struct simd_aead_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct TYPE_3__ {struct crypto_aead base; } ;

/* Variables and functions */
 struct aead_request* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 struct simd_aead_ctx* FUNC4 (struct crypto_aead*) ; 
 int FUNC5 (struct aead_request*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct aead_request *req)
{
	struct crypto_aead *tfm = FUNC6(req);
	struct simd_aead_ctx *ctx = FUNC4(tfm);
	struct aead_request *subreq;
	struct crypto_aead *child;

	subreq = FUNC0(req);
	*subreq = *req;

	if (!FUNC7() ||
	    (FUNC8() && FUNC3(ctx->cryptd_tfm)))
		child = &ctx->cryptd_tfm->base;
	else
		child = FUNC2(ctx->cryptd_tfm);

	FUNC1(subreq, child);

	return FUNC5(subreq);
}