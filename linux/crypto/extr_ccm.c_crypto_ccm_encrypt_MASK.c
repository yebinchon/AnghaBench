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
struct crypto_ccm_req_priv_ctx {struct scatterlist* src; int /*<<< orphan*/  flags; struct scatterlist* dst; int /*<<< orphan*/ * odata; struct skcipher_request skreq; } ;
struct crypto_ccm_ctx {int /*<<< orphan*/  ctr; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; int /*<<< orphan*/ * iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*) ; 
 struct crypto_ccm_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int FUNC3 (struct aead_request*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  crypto_ccm_encrypt_done ; 
 int FUNC4 (struct aead_request*,int /*<<< orphan*/ *) ; 
 struct crypto_ccm_req_priv_ctx* FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC2(req);
	struct crypto_ccm_ctx *ctx = FUNC1(aead);
	struct crypto_ccm_req_priv_ctx *pctx = FUNC5(req);
	struct skcipher_request *skreq = &pctx->skreq;
	struct scatterlist *dst;
	unsigned int cryptlen = req->cryptlen;
	u8 *odata = pctx->odata;
	u8 *iv = req->iv;
	int err;

	err = FUNC4(req, odata);
	if (err)
		return err;

	err = FUNC3(req, FUNC8(pctx->src), cryptlen);
	if (err)
		return err;

	dst = pctx->src;
	if (req->src != req->dst)
		dst = pctx->dst;

	FUNC11(skreq, ctx->ctr);
	FUNC9(skreq, pctx->flags,
				      crypto_ccm_encrypt_done, req);
	FUNC10(skreq, pctx->src, dst, cryptlen + 16, iv);
	err = FUNC6(skreq);
	if (err)
		return err;

	/* copy authtag to end of dst */
	FUNC7(odata, FUNC8(dst), cryptlen,
				 FUNC0(aead), 1);
	return err;
}