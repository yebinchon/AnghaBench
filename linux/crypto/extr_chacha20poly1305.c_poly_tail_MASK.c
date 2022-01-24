#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* cryptlen; void* assoclen; } ;
struct poly_req {int /*<<< orphan*/  req; int /*<<< orphan*/  src; TYPE_2__ tail; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_3__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {int /*<<< orphan*/  tag; int /*<<< orphan*/  flags; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  assoclen; TYPE_1__ u; } ;
struct chachapoly_ctx {int /*<<< orphan*/  poly; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct chachapoly_ctx* FUNC5 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct aead_request*) ; 
 int /*<<< orphan*/  poly_tail_done ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req)
{
	struct crypto_aead *tfm = FUNC6(req);
	struct chachapoly_ctx *ctx = FUNC5(tfm);
	struct chachapoly_req_ctx *rctx = FUNC0(req);
	struct poly_req *preq = &rctx->u.poly;
	int err;

	preq->tail.assoclen = FUNC4(rctx->assoclen);
	preq->tail.cryptlen = FUNC4(rctx->cryptlen);
	FUNC9(preq->src, &preq->tail, sizeof(preq->tail));

	FUNC1(&preq->req, rctx->flags,
				   poly_tail_done, req);
	FUNC3(&preq->req, ctx->poly);
	FUNC2(&preq->req, preq->src,
				rctx->tag, sizeof(preq->tail));

	err = FUNC7(&preq->req);
	if (err)
		return err;

	return FUNC8(req);
}