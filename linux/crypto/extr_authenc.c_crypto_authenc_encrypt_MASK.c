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
struct crypto_authenc_ctx {struct crypto_skcipher* enc; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ tail; } ;
struct authenc_instance_ctx {scalar_t__ reqoff; } ;
struct aead_request {unsigned int cryptlen; int /*<<< orphan*/  iv; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 struct aead_instance* FUNC0 (struct crypto_aead*) ; 
 struct authenc_instance_ctx* FUNC1 (struct aead_instance*) ; 
 struct authenc_request_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 
 struct crypto_authenc_ctx* FUNC4 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  crypto_authenc_encrypt_done ; 
 int FUNC7 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct skcipher_request*) ; 
 struct scatterlist* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC13(struct aead_request *req)
{
	struct crypto_aead *authenc = FUNC5(req);
	struct aead_instance *inst = FUNC0(authenc);
	struct crypto_authenc_ctx *ctx = FUNC4(authenc);
	struct authenc_instance_ctx *ictx = FUNC1(inst);
	struct authenc_request_ctx *areq_ctx = FUNC2(req);
	struct crypto_skcipher *enc = ctx->enc;
	unsigned int cryptlen = req->cryptlen;
	struct skcipher_request *skreq = (void *)(areq_ctx->tail +
						  ictx->reqoff);
	struct scatterlist *src, *dst;
	int err;

	src = FUNC9(areq_ctx->src, req->src, req->assoclen);
	dst = src;

	if (req->src != req->dst) {
		err = FUNC6(req);
		if (err)
			return err;

		dst = FUNC9(areq_ctx->dst, req->dst, req->assoclen);
	}

	FUNC12(skreq, enc);
	FUNC10(skreq, FUNC3(req),
				      crypto_authenc_encrypt_done, req);
	FUNC11(skreq, src, dst, cryptlen, req->iv);

	err = FUNC8(skreq);
	if (err)
		return err;

	return FUNC7(req, FUNC3(req));
}