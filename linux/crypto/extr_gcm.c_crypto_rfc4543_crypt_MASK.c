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
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/  iv; } ;
struct crypto_rfc4543_req_ctx {struct aead_request subreq; } ;
struct crypto_rfc4543_ctx {int /*<<< orphan*/  child; int /*<<< orphan*/  nonce; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct crypto_rfc4543_req_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct crypto_aead*) ; 
 struct crypto_rfc4543_ctx* FUNC8 (struct crypto_aead*) ; 
 int FUNC9 (struct aead_request*) ; 
 int FUNC10 (struct aead_request*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct crypto_aead* FUNC12 (struct aead_request*) ; 
 int FUNC13 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct aead_request *req, bool enc)
{
	struct crypto_aead *aead = FUNC12(req);
	struct crypto_rfc4543_ctx *ctx = FUNC8(aead);
	struct crypto_rfc4543_req_ctx *rctx = FUNC1(req);
	struct aead_request *subreq = &rctx->subreq;
	unsigned int authsize = FUNC7(aead);
	u8 *iv = FUNC0((u8 *)(rctx + 1) + FUNC11(ctx->child),
			   FUNC6(ctx->child) + 1);
	int err;

	if (req->src != req->dst) {
		err = FUNC13(req, enc);
		if (err)
			return err;
	}

	FUNC14(iv, ctx->nonce, 4);
	FUNC14(iv + 4, req->iv, 8);

	FUNC5(subreq, ctx->child);
	FUNC3(subreq, req->base.flags,
				  req->base.complete, req->base.data);
	FUNC4(subreq, req->src, req->dst,
			       enc ? 0 : authsize, iv);
	FUNC2(subreq, req->assoclen + req->cryptlen -
				    subreq->cryptlen);

	return enc ? FUNC10(subreq) : FUNC9(subreq);
}