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
typedef  int /*<<< orphan*/  u32 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_authenc_esn_ctx {int /*<<< orphan*/  enc; struct crypto_ahash* auth; scalar_t__ reqoff; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_esn_request_ctx {int /*<<< orphan*/  dst; scalar_t__ tail; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; } ;
struct aead_request {unsigned int cryptlen; unsigned int assoclen; int /*<<< orphan*/  iv; TYPE_1__ base; struct scatterlist* dst; } ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct authenc_esn_request_ctx* FUNC1 (struct aead_request*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_authenc_esn_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 scalar_t__ FUNC5 (struct crypto_ahash*) ; 
 int FUNC6 (struct crypto_ahash*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC8 (struct skcipher_request*) ; 
 struct scatterlist* FUNC9 (int /*<<< orphan*/ ,struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct aead_request *req,
					   unsigned int flags)
{
	struct crypto_aead *authenc_esn = FUNC4(req);
	unsigned int authsize = FUNC2(authenc_esn);
	struct authenc_esn_request_ctx *areq_ctx = FUNC1(req);
	struct crypto_authenc_esn_ctx *ctx = FUNC3(authenc_esn);
	struct skcipher_request *skreq = (void *)(areq_ctx->tail +
						  ctx->reqoff);
	struct crypto_ahash *auth = ctx->auth;
	u8 *ohash = FUNC0((u8 *)areq_ctx->tail,
			      FUNC5(auth) + 1);
	unsigned int cryptlen = req->cryptlen - authsize;
	unsigned int assoclen = req->assoclen;
	struct scatterlist *dst = req->dst;
	u8 *ihash = ohash + FUNC6(auth);
	u32 tmp[2];

	if (!authsize)
		goto decrypt;

	/* Move high-order bits of sequence number back. */
	FUNC10(tmp, dst, 4, 4, 0);
	FUNC10(tmp + 1, dst, assoclen + cryptlen, 4, 0);
	FUNC10(tmp, dst, 0, 8, 1);

	if (FUNC7(ihash, ohash, authsize))
		return -EBADMSG;

decrypt:

	FUNC11(areq_ctx->dst, 2);
	dst = FUNC9(areq_ctx->dst, dst, assoclen);

	FUNC14(skreq, ctx->enc);
	FUNC12(skreq, flags,
				      req->base.complete, req->base.data);
	FUNC13(skreq, dst, dst, cryptlen, req->iv);

	return FUNC8(skreq);
}