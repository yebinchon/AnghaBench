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
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct skcipher_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/  iv; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_rfc3686_req_ctx {int /*<<< orphan*/ * iv; struct skcipher_request subreq; } ;
struct crypto_rfc3686_ctx {int /*<<< orphan*/  nonce; struct crypto_skcipher* child; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int CTR_RFC3686_IV_SIZE ; 
 int CTR_RFC3686_NONCE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_rfc3686_ctx* FUNC3 (struct crypto_skcipher*) ; 
 int FUNC4 (struct skcipher_request*) ; 
 struct crypto_skcipher* FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC11(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC5(req);
	struct crypto_rfc3686_ctx *ctx = FUNC3(tfm);
	struct crypto_skcipher *child = ctx->child;
	unsigned long align = FUNC2(tfm);
	struct crypto_rfc3686_req_ctx *rctx =
		(void *)FUNC0((u8 *)FUNC7(req), align + 1);
	struct skcipher_request *subreq = &rctx->subreq;
	u8 *iv = rctx->iv;

	/* set up counter block */
	FUNC6(iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
	FUNC6(iv + CTR_RFC3686_NONCE_SIZE, req->iv, CTR_RFC3686_IV_SIZE);

	/* initialize counter portion of counter block */
	*(__be32 *)(iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
		FUNC1(1);

	FUNC10(subreq, child);
	FUNC8(subreq, req->base.flags,
				      req->base.complete, req->base.data);
	FUNC9(subreq, req->src, req->dst,
				   req->cryptlen, iv);

	return FUNC4(subreq);
}