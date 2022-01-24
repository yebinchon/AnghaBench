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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct crypto_authenc_esn_ctx {struct crypto_ahash* auth; scalar_t__ reqoff; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_esn_request_ctx {int /*<<< orphan*/  dst; scalar_t__ tail; } ;
struct ahash_request {int dummy; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; struct scatterlist* src; struct scatterlist* dst; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct authenc_esn_request_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*,struct crypto_ahash*) ; 
 int /*<<< orphan*/  authenc_esn_verify_ahash_done ; 
 unsigned int FUNC6 (struct crypto_aead*) ; 
 struct crypto_authenc_esn_ctx* FUNC7 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC8 (struct aead_request*) ; 
 scalar_t__ FUNC9 (struct crypto_ahash*) ; 
 int FUNC10 (struct ahash_request*) ; 
 int FUNC11 (struct crypto_ahash*) ; 
 int FUNC12 (struct aead_request*,unsigned int) ; 
 int FUNC13 (struct aead_request*,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC14 (int /*<<< orphan*/ ,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct aead_request *req)
{
	struct crypto_aead *authenc_esn = FUNC8(req);
	struct authenc_esn_request_ctx *areq_ctx = FUNC1(req);
	struct crypto_authenc_esn_ctx *ctx = FUNC7(authenc_esn);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);
	unsigned int authsize = FUNC6(authenc_esn);
	struct crypto_ahash *auth = ctx->auth;
	u8 *ohash = FUNC0((u8 *)areq_ctx->tail,
			      FUNC9(auth) + 1);
	unsigned int assoclen = req->assoclen;
	unsigned int cryptlen = req->cryptlen;
	u8 *ihash = ohash + FUNC11(auth);
	struct scatterlist *dst = req->dst;
	u32 tmp[2];
	int err;

	cryptlen -= authsize;

	if (req->src != dst) {
		err = FUNC12(req, assoclen + cryptlen);
		if (err)
			return err;
	}

	FUNC15(ihash, req->src, assoclen + cryptlen,
				 authsize, 0);

	if (!authsize)
		goto tail;

	/* Move high-order bits of sequence number to the end. */
	FUNC15(tmp, dst, 0, 8, 0);
	FUNC15(tmp, dst, 4, 4, 1);
	FUNC15(tmp + 1, dst, assoclen + cryptlen, 4, 1);

	FUNC16(areq_ctx->dst, 2);
	dst = FUNC14(areq_ctx->dst, dst, 4);

	FUNC5(ahreq, auth);
	FUNC4(ahreq, dst, ohash, assoclen + cryptlen);
	FUNC3(ahreq, FUNC2(req),
				   authenc_esn_verify_ahash_done, req);

	err = FUNC10(ahreq);
	if (err)
		return err;

tail:
	return FUNC13(req, FUNC2(req));
}