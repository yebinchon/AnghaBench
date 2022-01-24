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
struct chacha_req {int /*<<< orphan*/  req; int /*<<< orphan*/  iv; } ;
struct TYPE_2__ {struct chacha_req chacha; } ;
struct chachapoly_req_ctx {int /*<<< orphan*/  flags; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ u; } ;
struct chachapoly_ctx {int /*<<< orphan*/  chacha; } ;
struct aead_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  chacha_encrypt_done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct aead_request*,int) ; 
 struct chachapoly_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct aead_request*) ; 
 struct scatterlist* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct scatterlist*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req)
{
	struct chachapoly_ctx *ctx = FUNC2(FUNC3(req));
	struct chachapoly_req_ctx *rctx = FUNC0(req);
	struct chacha_req *creq = &rctx->u.chacha;
	struct scatterlist *src, *dst;
	int err;

	if (req->cryptlen == 0)
		goto skip;

	FUNC1(creq->iv, req, 1);

	src = FUNC6(rctx->src, req->src, req->assoclen);
	dst = src;
	if (req->src != req->dst)
		dst = FUNC6(rctx->dst, req->dst, req->assoclen);

	FUNC7(&creq->req, rctx->flags,
				      chacha_encrypt_done, req);
	FUNC9(&creq->req, ctx->chacha);
	FUNC8(&creq->req, src, dst,
				   req->cryptlen, creq->iv);
	err = FUNC4(&creq->req);
	if (err)
		return err;

skip:
	return FUNC5(req);
}