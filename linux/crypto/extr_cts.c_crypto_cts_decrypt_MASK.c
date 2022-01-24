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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; struct skcipher_request* data; int /*<<< orphan*/  complete; } ;
struct skcipher_request {unsigned int cryptlen; int /*<<< orphan*/  iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cts_reqctx {unsigned int offset; struct skcipher_request subreq; } ;
struct crypto_cts_ctx {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  crypto_cts_decrypt_done ; 
 int /*<<< orphan*/ * FUNC0 (struct skcipher_request*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_cts_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int FUNC3 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct crypto_cts_reqctx* FUNC9 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC4(req);
	struct crypto_cts_reqctx *rctx = FUNC9(req);
	struct crypto_cts_ctx *ctx = FUNC2(tfm);
	struct skcipher_request *subreq = &rctx->subreq;
	int bsize = FUNC1(tfm);
	unsigned int nbytes = req->cryptlen;
	unsigned int offset;
	u8 *space;

	FUNC12(subreq, ctx->child);

	if (nbytes < bsize)
		return -EINVAL;

	if (nbytes == bsize) {
		FUNC10(subreq, req->base.flags,
					      req->base.complete,
					      req->base.data);
		FUNC11(subreq, req->src, req->dst, nbytes,
					   req->iv);
		return FUNC3(subreq);
	}

	FUNC10(subreq, req->base.flags,
				      crypto_cts_decrypt_done, req);

	space = FUNC0(req);

	offset = FUNC7(nbytes - 1, bsize);
	rctx->offset = offset;

	if (offset <= bsize)
		FUNC6(space, req->iv, bsize);
	else
		FUNC8(space, req->src, offset - 2 * bsize,
					 bsize, 0);

	FUNC11(subreq, req->src, req->dst,
				   offset, req->iv);

	return FUNC3(subreq) ?:
	       FUNC5(req);
}