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
struct poly_req {int /*<<< orphan*/  req; int /*<<< orphan*/  src; int /*<<< orphan*/  pad; } ;
struct TYPE_2__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {unsigned int assoclen; int /*<<< orphan*/  flags; TYPE_1__ u; } ;
struct chachapoly_ctx {int /*<<< orphan*/  poly; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 unsigned int POLY1305_BLOCK_SIZE ; 
 struct chachapoly_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct chachapoly_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  poly_adpad_done ; 
 int FUNC8 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req)
{
	struct chachapoly_ctx *ctx = FUNC4(FUNC5(req));
	struct chachapoly_req_ctx *rctx = FUNC0(req);
	struct poly_req *preq = &rctx->u.poly;
	unsigned int padlen;
	int err;

	padlen = -rctx->assoclen % POLY1305_BLOCK_SIZE;
	FUNC7(preq->pad, 0, sizeof(preq->pad));
	FUNC9(preq->src, preq->pad, padlen);

	FUNC1(&preq->req, rctx->flags,
				   poly_adpad_done, req);
	FUNC3(&preq->req, ctx->poly);
	FUNC2(&preq->req, preq->src, NULL, padlen);

	err = FUNC6(&preq->req);
	if (err)
		return err;

	return FUNC8(req);
}