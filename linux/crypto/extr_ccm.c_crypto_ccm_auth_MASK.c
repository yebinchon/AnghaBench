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
struct scatterlist {int dummy; } ;
struct ahash_request {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int /*<<< orphan*/ * odata; int /*<<< orphan*/  flags; int /*<<< orphan*/ * idata; struct ahash_request ahreq; } ;
struct crypto_ccm_ctx {int /*<<< orphan*/  mac; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int assoclen; struct scatterlist* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 struct crypto_ccm_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct ahash_request*) ; 
 int FUNC6 (struct ahash_request*) ; 
 int FUNC7 (struct ahash_request*) ; 
 struct crypto_ccm_req_priv_ctx* FUNC8 (struct aead_request*) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct aead_request*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(struct aead_request *req, struct scatterlist *plain,
			   unsigned int cryptlen)
{
	struct crypto_ccm_req_priv_ctx *pctx = FUNC8(req);
	struct crypto_aead *aead = FUNC4(req);
	struct crypto_ccm_ctx *ctx = FUNC3(aead);
	struct ahash_request *ahreq = &pctx->ahreq;
	unsigned int assoclen = req->assoclen;
	struct scatterlist sg[3];
	u8 *odata = pctx->odata;
	u8 *idata = pctx->idata;
	int ilen, err;

	/* format control data for input */
	err = FUNC10(odata, req, cryptlen);
	if (err)
		goto out;

	FUNC13(sg, 3);
	FUNC14(&sg[0], odata, 16);

	/* format associated data and compute into mac */
	if (assoclen) {
		ilen = FUNC9(idata, assoclen);
		FUNC14(&sg[1], idata, ilen);
		FUNC12(sg, 3, req->src);
	} else {
		ilen = 0;
		FUNC12(sg, 2, req->src);
	}

	FUNC2(ahreq, ctx->mac);
	FUNC0(ahreq, pctx->flags, NULL, NULL);
	FUNC1(ahreq, sg, NULL, assoclen + ilen + 16);
	err = FUNC6(ahreq);
	if (err)
		goto out;
	err = FUNC7(ahreq);
	if (err)
		goto out;

	/* we need to pad the MAC input to a round multiple of the block size */
	ilen = 16 - (assoclen + ilen) % 16;
	if (ilen < 16) {
		FUNC11(idata, 0, ilen);
		FUNC13(sg, 2);
		FUNC14(&sg[0], idata, ilen);
		if (plain)
			FUNC12(sg, 2, plain);
		plain = sg;
		cryptlen += ilen;
	}

	FUNC1(ahreq, plain, pctx->odata, cryptlen);
	err = FUNC5(ahreq);
out:
	return err;
}