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
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct aead_request {scalar_t__ src; scalar_t__ dst; scalar_t__ assoclen; int /*<<< orphan*/  cryptlen; TYPE_1__ base; int /*<<< orphan*/  iv; } ;
struct crypto_rfc4106_req_ctx {struct scatterlist* dst; struct scatterlist* src; struct aead_request subreq; } ;
struct crypto_rfc4106_ctx {int /*<<< orphan*/  nonce; struct crypto_aead* child; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int GCM_AES_IV_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct crypto_rfc4106_req_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,struct scatterlist*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,struct crypto_aead*) ; 
 scalar_t__ FUNC6 (struct crypto_aead*) ; 
 struct crypto_rfc4106_ctx* FUNC7 (struct crypto_aead*) ; 
 int FUNC8 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC9 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct scatterlist* FUNC11 (struct scatterlist*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct scatterlist*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static struct aead_request *FUNC16(struct aead_request *req)
{
	struct crypto_rfc4106_req_ctx *rctx = FUNC1(req);
	struct crypto_aead *aead = FUNC9(req);
	struct crypto_rfc4106_ctx *ctx = FUNC7(aead);
	struct aead_request *subreq = &rctx->subreq;
	struct crypto_aead *child = ctx->child;
	struct scatterlist *sg;
	u8 *iv = FUNC0((u8 *)(subreq + 1) + FUNC8(child),
			   FUNC6(child) + 1);

	FUNC12(iv + GCM_AES_IV_SIZE, req->src, 0, req->assoclen - 8, 0);

	FUNC10(iv, ctx->nonce, 4);
	FUNC10(iv + 4, req->iv, 8);

	FUNC14(rctx->src, 3);
	FUNC15(rctx->src, iv + GCM_AES_IV_SIZE, req->assoclen - 8);
	sg = FUNC11(rctx->src + 1, req->src, req->assoclen);
	if (sg != rctx->src + 1)
		FUNC13(rctx->src, 2, sg);

	if (req->src != req->dst) {
		FUNC14(rctx->dst, 3);
		FUNC15(rctx->dst, iv + GCM_AES_IV_SIZE, req->assoclen - 8);
		sg = FUNC11(rctx->dst + 1, req->dst, req->assoclen);
		if (sg != rctx->dst + 1)
			FUNC13(rctx->dst, 2, sg);
	}

	FUNC5(subreq, child);
	FUNC3(subreq, req->base.flags, req->base.complete,
				  req->base.data);
	FUNC4(subreq, rctx->src,
			       req->src == req->dst ? rctx->src : rctx->dst,
			       req->cryptlen, iv);
	FUNC2(subreq, req->assoclen - 8);

	return subreq;
}