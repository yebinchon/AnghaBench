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
struct TYPE_2__ {int /*<<< orphan*/  flags; struct skcipher_request* data; int /*<<< orphan*/  complete; } ;
struct skcipher_request {unsigned int cryptlen; int /*<<< orphan*/  iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cts_reqctx {unsigned int offset; struct skcipher_request subreq; } ;
struct crypto_cts_ctx {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  crypto_cts_encrypt_done ; 
 int FUNC0 (struct crypto_skcipher*) ; 
 struct crypto_cts_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int FUNC4 (struct skcipher_request*) ; 
 unsigned int FUNC5 (unsigned int,int) ; 
 struct crypto_cts_reqctx* FUNC6 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC3(req);
	struct crypto_cts_reqctx *rctx = FUNC6(req);
	struct crypto_cts_ctx *ctx = FUNC1(tfm);
	struct skcipher_request *subreq = &rctx->subreq;
	int bsize = FUNC0(tfm);
	unsigned int nbytes = req->cryptlen;
	unsigned int offset;

	FUNC9(subreq, ctx->child);

	if (nbytes < bsize)
		return -EINVAL;

	if (nbytes == bsize) {
		FUNC7(subreq, req->base.flags,
					      req->base.complete,
					      req->base.data);
		FUNC8(subreq, req->src, req->dst, nbytes,
					   req->iv);
		return FUNC2(subreq);
	}

	offset = FUNC5(nbytes - 1, bsize);
	rctx->offset = offset;

	FUNC7(subreq, req->base.flags,
				      crypto_cts_encrypt_done, req);
	FUNC8(subreq, req->src, req->dst,
				   offset, req->iv);

	return FUNC2(subreq) ?:
	       FUNC4(req);
}