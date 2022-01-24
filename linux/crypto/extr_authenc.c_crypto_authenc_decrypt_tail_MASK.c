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
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_authenc_ctx {int /*<<< orphan*/  enc; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ tail; } ;
struct authenc_instance_ctx {scalar_t__ reqoff; } ;
struct ahash_request {int /*<<< orphan*/ * result; int /*<<< orphan*/  nbytes; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; } ;
struct aead_request {int /*<<< orphan*/  iv; scalar_t__ cryptlen; TYPE_1__ base; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 struct aead_instance* FUNC0 (struct crypto_aead*) ; 
 struct authenc_instance_ctx* FUNC1 (struct aead_instance*) ; 
 struct authenc_request_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 
 unsigned int FUNC4 (struct crypto_aead*) ; 
 struct crypto_authenc_ctx* FUNC5 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC8 (struct skcipher_request*) ; 
 struct scatterlist* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct aead_request *req,
				       unsigned int flags)
{
	struct crypto_aead *authenc = FUNC6(req);
	struct aead_instance *inst = FUNC0(authenc);
	struct crypto_authenc_ctx *ctx = FUNC5(authenc);
	struct authenc_instance_ctx *ictx = FUNC1(inst);
	struct authenc_request_ctx *areq_ctx = FUNC2(req);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ictx->reqoff);
	struct skcipher_request *skreq = (void *)(areq_ctx->tail +
						  ictx->reqoff);
	unsigned int authsize = FUNC4(authenc);
	u8 *ihash = ahreq->result + authsize;
	struct scatterlist *src, *dst;

	FUNC10(ihash, req->src, ahreq->nbytes, authsize, 0);

	if (FUNC7(ihash, ahreq->result, authsize))
		return -EBADMSG;

	src = FUNC9(areq_ctx->src, req->src, req->assoclen);
	dst = src;

	if (req->src != req->dst)
		dst = FUNC9(areq_ctx->dst, req->dst, req->assoclen);

	FUNC13(skreq, ctx->enc);
	FUNC11(skreq, FUNC3(req),
				      req->base.complete, req->base.data);
	FUNC12(skreq, src, dst,
				   req->cryptlen - authsize, req->iv);

	return FUNC8(skreq);
}