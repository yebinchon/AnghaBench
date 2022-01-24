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
struct crypto_authenc_esn_ctx {scalar_t__ reqoff; struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_esn_request_ctx {int /*<<< orphan*/  dst; scalar_t__ tail; } ;
struct ahash_request {int dummy; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; struct scatterlist* dst; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct authenc_esn_request_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*,unsigned int,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*,struct crypto_ahash*) ; 
 int /*<<< orphan*/  authenc_esn_geniv_ahash_done ; 
 unsigned int FUNC6 (struct crypto_aead*) ; 
 struct crypto_authenc_esn_ctx* FUNC7 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC8 (struct aead_request*) ; 
 scalar_t__ FUNC9 (struct crypto_ahash*) ; 
 scalar_t__ FUNC10 (struct ahash_request*) ; 
 int FUNC11 (struct aead_request*,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC12 (int /*<<< orphan*/ ,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct aead_request *req,
				     unsigned int flags)
{
	struct crypto_aead *authenc_esn = FUNC8(req);
	struct authenc_esn_request_ctx *areq_ctx = FUNC1(req);
	struct crypto_authenc_esn_ctx *ctx = FUNC7(authenc_esn);
	struct crypto_ahash *auth = ctx->auth;
	u8 *hash = FUNC0((u8 *)areq_ctx->tail,
			     FUNC9(auth) + 1);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);
	unsigned int authsize = FUNC6(authenc_esn);
	unsigned int assoclen = req->assoclen;
	unsigned int cryptlen = req->cryptlen;
	struct scatterlist *dst = req->dst;
	u32 tmp[2];

	if (!authsize)
		return 0;

	/* Move high-order bits of sequence number to the end. */
	FUNC13(tmp, dst, 0, 8, 0);
	FUNC13(tmp, dst, 4, 4, 1);
	FUNC13(tmp + 1, dst, assoclen + cryptlen, 4, 1);

	FUNC14(areq_ctx->dst, 2);
	dst = FUNC12(areq_ctx->dst, dst, 4);

	FUNC5(ahreq, auth);
	FUNC4(ahreq, dst, hash, assoclen + cryptlen);
	FUNC3(ahreq, flags,
				   authenc_esn_geniv_ahash_done, req);

	return FUNC10(ahreq) ?:
	       FUNC11(req, FUNC2(req));
}