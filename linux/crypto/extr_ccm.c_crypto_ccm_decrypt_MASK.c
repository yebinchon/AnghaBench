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
typedef  int /*<<< orphan*/  u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_ccm_req_priv_ctx {struct scatterlist* src; int /*<<< orphan*/  flags; struct scatterlist* dst; int /*<<< orphan*/ * idata; int /*<<< orphan*/ * odata; int /*<<< orphan*/ * auth_tag; struct skcipher_request skreq; } ;
struct crypto_ccm_ctx {int /*<<< orphan*/  ctr; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int EBADMSG ; 
 unsigned int FUNC0 (struct crypto_aead*) ; 
 struct crypto_ccm_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int FUNC3 (struct aead_request*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  crypto_ccm_decrypt_done ; 
 int FUNC4 (struct aead_request*,int /*<<< orphan*/ *) ; 
 struct crypto_ccm_req_priv_ctx* FUNC5 (struct aead_request*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC2(req);
	struct crypto_ccm_ctx *ctx = FUNC1(aead);
	struct crypto_ccm_req_priv_ctx *pctx = FUNC5(req);
	struct skcipher_request *skreq = &pctx->skreq;
	struct scatterlist *dst;
	unsigned int authsize = FUNC0(aead);
	unsigned int cryptlen = req->cryptlen;
	u8 *authtag = pctx->auth_tag;
	u8 *odata = pctx->odata;
	u8 *iv = pctx->idata;
	int err;

	cryptlen -= authsize;

	err = FUNC4(req, authtag);
	if (err)
		return err;

	FUNC9(authtag, FUNC10(pctx->src), cryptlen,
				 authsize, 0);

	dst = pctx->src;
	if (req->src != req->dst)
		dst = pctx->dst;

	FUNC8(iv, req->iv, 16);

	FUNC13(skreq, ctx->ctr);
	FUNC11(skreq, pctx->flags,
				      crypto_ccm_decrypt_done, req);
	FUNC12(skreq, pctx->src, dst, cryptlen + 16, iv);
	err = FUNC7(skreq);
	if (err)
		return err;

	err = FUNC3(req, FUNC10(dst), cryptlen);
	if (err)
		return err;

	/* verify */
	if (FUNC6(authtag, odata, authsize))
		return -EBADMSG;

	return err;
}