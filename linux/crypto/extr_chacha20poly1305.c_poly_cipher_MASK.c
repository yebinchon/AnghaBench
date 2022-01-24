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
struct poly_req {int /*<<< orphan*/  req; } ;
struct TYPE_2__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {scalar_t__ cryptlen; int /*<<< orphan*/  flags; int /*<<< orphan*/  src; TYPE_1__ u; } ;
struct chachapoly_ctx {int /*<<< orphan*/  poly; } ;
struct aead_request {scalar_t__ cryptlen; int /*<<< orphan*/  assoclen; struct scatterlist* dst; struct scatterlist* src; } ;

/* Variables and functions */
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct scatterlist*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct chachapoly_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  poly_cipher_done ; 
 int FUNC7 (struct aead_request*) ; 
 struct scatterlist* FUNC8 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct aead_request *req)
{
	struct chachapoly_ctx *ctx = FUNC4(FUNC5(req));
	struct chachapoly_req_ctx *rctx = FUNC0(req);
	struct poly_req *preq = &rctx->u.poly;
	struct scatterlist *crypt = req->src;
	int err;

	if (rctx->cryptlen == req->cryptlen) /* encrypting */
		crypt = req->dst;

	crypt = FUNC8(rctx->src, crypt, req->assoclen);

	FUNC1(&preq->req, rctx->flags,
				   poly_cipher_done, req);
	FUNC3(&preq->req, ctx->poly);
	FUNC2(&preq->req, crypt, NULL, rctx->cryptlen);

	err = FUNC6(&preq->req);
	if (err)
		return err;

	return FUNC7(req);
}