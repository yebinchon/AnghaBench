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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct skcipher_request {int cryptlen; TYPE_1__ base; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct rctx {int /*<<< orphan*/  tail; int /*<<< orphan*/  t; int /*<<< orphan*/  sg; struct skcipher_request subreq; } ;
struct priv {int /*<<< orphan*/  child; } ;
typedef  int /*<<< orphan*/  le128 ;

/* Variables and functions */
 int XTS_BLOCK_SIZE ; 
 struct priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  cts_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 struct rctx* FUNC6 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct skcipher_request *req,
		     int (*crypt)(struct skcipher_request *req))
{
	struct priv *ctx = FUNC0(FUNC1(req));
	int offset = req->cryptlen & ~(XTS_BLOCK_SIZE - 1);
	struct rctx *rctx = FUNC6(req);
	struct skcipher_request *subreq = &rctx->subreq;
	int tail = req->cryptlen % XTS_BLOCK_SIZE;
	le128 b[2];
	int err;

	rctx->tail = FUNC4(rctx->sg, req->dst,
				      offset - XTS_BLOCK_SIZE);

	FUNC5(b, rctx->tail, 0, XTS_BLOCK_SIZE, 0);
	FUNC3(b + 1, b, tail);
	FUNC5(b, req->src, offset, tail, 0);

	FUNC2(b, &rctx->t, b);

	FUNC5(b, rctx->tail, 0, XTS_BLOCK_SIZE + tail, 1);

	FUNC9(subreq, ctx->child);
	FUNC7(subreq, req->base.flags, cts_done, req);
	FUNC8(subreq, rctx->tail, rctx->tail,
				   XTS_BLOCK_SIZE, NULL);

	err = crypt(subreq);
	if (err)
		return err;

	FUNC5(b, rctx->tail, 0, XTS_BLOCK_SIZE, 0);
	FUNC2(b, &rctx->t, b);
	FUNC5(b, rctx->tail, 0, XTS_BLOCK_SIZE, 1);

	return 0;
}