#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_authenc_esn_ctx {struct crypto_skcipher* enc; scalar_t__ reqoff; } ;
struct crypto_aead {int dummy; } ;
struct authenc_esn_request_ctx {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ tail; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; int /*<<< orphan*/  iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct authenc_esn_request_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 struct crypto_authenc_esn_ctx* FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int FUNC4 (struct aead_request*,unsigned int) ; 
 int /*<<< orphan*/  crypto_authenc_esn_encrypt_done ; 
 int FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct skcipher_request*) ; 
 struct scatterlist* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC12(struct aead_request *req)
{
	struct crypto_aead *authenc_esn = FUNC3(req);
	struct authenc_esn_request_ctx *areq_ctx = FUNC0(req);
	struct crypto_authenc_esn_ctx *ctx = FUNC2(authenc_esn);
	struct skcipher_request *skreq = (void *)(areq_ctx->tail +
						  ctx->reqoff);
	struct crypto_skcipher *enc = ctx->enc;
	unsigned int assoclen = req->assoclen;
	unsigned int cryptlen = req->cryptlen;
	struct scatterlist *src, *dst;
	int err;

	FUNC8(areq_ctx->src, 2);
	src = FUNC7(areq_ctx->src, req->src, assoclen);
	dst = src;

	if (req->src != req->dst) {
		err = FUNC4(req, assoclen);
		if (err)
			return err;

		FUNC8(areq_ctx->dst, 2);
		dst = FUNC7(areq_ctx->dst, req->dst, assoclen);
	}

	FUNC11(skreq, enc);
	FUNC9(skreq, FUNC1(req),
				      crypto_authenc_esn_encrypt_done, req);
	FUNC10(skreq, src, dst, cryptlen, req->iv);

	err = FUNC6(skreq);
	if (err)
		return err;

	return FUNC5(req, FUNC1(req));
}