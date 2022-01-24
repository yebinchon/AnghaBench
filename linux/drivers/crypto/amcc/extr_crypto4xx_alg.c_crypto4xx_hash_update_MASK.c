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
struct scatterlist {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct crypto4xx_ctx {int /*<<< orphan*/  sa_len; int /*<<< orphan*/  sa_in; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct crypto4xx_ctx*,int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 struct crypto4xx_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC5(struct ahash_request *req)
{
	struct crypto_ahash *ahash = FUNC2(req);
	struct crypto4xx_ctx *ctx = FUNC3(req->base.tfm);
	struct scatterlist dst;
	unsigned int ds = FUNC1(ahash);

	FUNC4(&dst, req->result, ds);

	return FUNC0(&req->base, ctx, req->src, &dst,
				  req->nbytes, NULL, 0, ctx->sa_in,
				  ctx->sa_len, 0, NULL);
}