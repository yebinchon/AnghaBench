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
struct scatterlist {int /*<<< orphan*/  offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  aead; } ;
struct essiv_tfm_ctx {int ivoffset; TYPE_1__ u; int /*<<< orphan*/  essiv_cipher; } ;
struct aead_request {int assoclen; int /*<<< orphan*/ * iv; int /*<<< orphan*/  cryptlen; struct scatterlist* dst; struct scatterlist* src; } ;
struct essiv_aead_request_ctx {int /*<<< orphan*/ * assoc; struct scatterlist* sg; struct aead_request aead_req; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct essiv_aead_request_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,struct scatterlist*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 struct essiv_tfm_ctx* FUNC6 (struct crypto_aead*) ; 
 int FUNC7 (struct aead_request*) ; 
 int FUNC8 (struct aead_request*) ; 
 int FUNC9 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC10 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  essiv_aead_done ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct scatterlist* FUNC15 (struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct scatterlist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC18 (struct scatterlist*,int) ; 
 int FUNC19 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC21 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (struct scatterlist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct aead_request *req, bool enc)
{
	struct crypto_aead *tfm = FUNC10(req);
	const struct essiv_tfm_ctx *tctx = FUNC6(tfm);
	struct essiv_aead_request_ctx *rctx = FUNC0(req);
	struct aead_request *subreq = &rctx->aead_req;
	struct scatterlist *src = req->src;
	int err;

	FUNC11(tctx->essiv_cipher, req->iv, req->iv);

	/*
	 * dm-crypt embeds the sector number and the IV in the AAD region, so
	 * we have to copy the converted IV into the right scatterlist before
	 * we pass it on.
	 */
	rctx->assoc = NULL;
	if (req->src == req->dst || !enc) {
		FUNC16(req->iv, req->dst,
					 req->assoclen - FUNC9(tfm),
					 FUNC9(tfm), 1);
	} else {
		u8 *iv = (u8 *)FUNC0(req) + tctx->ivoffset;
		int ivsize = FUNC9(tfm);
		int ssize = req->assoclen - ivsize;
		struct scatterlist *sg;
		int nents;

		if (ssize < 0)
			return -EINVAL;

		nents = FUNC19(req->src, ssize);
		if (nents < 0)
			return -EINVAL;

		FUNC14(iv, req->iv, ivsize);
		FUNC18(rctx->sg, 4);

		if (FUNC23(nents > 1)) {
			/*
			 * This is a case that rarely occurs in practice, but
			 * for correctness, we have to deal with it nonetheless.
			 */
			rctx->assoc = FUNC13(ssize, GFP_ATOMIC);
			if (!rctx->assoc)
				return -ENOMEM;

			FUNC16(rctx->assoc, req->src, 0,
						 ssize, 0);
			FUNC21(rctx->sg, rctx->assoc, ssize);
		} else {
			FUNC22(rctx->sg, FUNC20(req->src), ssize,
				    req->src->offset);
		}

		FUNC21(rctx->sg + 1, iv, ivsize);
		sg = FUNC15(rctx->sg + 2, req->src, req->assoclen);
		if (sg != rctx->sg + 2)
			FUNC17(rctx->sg, 3, sg);

		src = rctx->sg;
	}

	FUNC5(subreq, tctx->u.aead);
	FUNC2(subreq, req->assoclen);
	FUNC3(subreq, FUNC1(req),
				  essiv_aead_done, req);
	FUNC4(subreq, src, req->dst, req->cryptlen, req->iv);

	err = enc ? FUNC8(subreq) :
		    FUNC7(subreq);

	if (rctx->assoc && err != -EINPROGRESS)
		FUNC12(rctx->assoc);
	return err;
}