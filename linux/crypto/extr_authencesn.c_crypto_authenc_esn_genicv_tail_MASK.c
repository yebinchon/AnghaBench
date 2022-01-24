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
struct crypto_authenc_esn_ctx {struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_esn_request_ctx {scalar_t__ tail; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; struct scatterlist* dst; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct authenc_esn_request_ctx* FUNC1 (struct aead_request*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_authenc_esn_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 scalar_t__ FUNC5 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req,
					  unsigned int flags)
{
	struct crypto_aead *authenc_esn = FUNC4(req);
	struct crypto_authenc_esn_ctx *ctx = FUNC3(authenc_esn);
	struct authenc_esn_request_ctx *areq_ctx = FUNC1(req);
	struct crypto_ahash *auth = ctx->auth;
	u8 *hash = FUNC0((u8 *)areq_ctx->tail,
			     FUNC5(auth) + 1);
	unsigned int authsize = FUNC2(authenc_esn);
	unsigned int assoclen = req->assoclen;
	unsigned int cryptlen = req->cryptlen;
	struct scatterlist *dst = req->dst;
	u32 tmp[2];

	/* Move high-order bits of sequence number back. */
	FUNC6(tmp, dst, 4, 4, 0);
	FUNC6(tmp + 1, dst, assoclen + cryptlen, 4, 0);
	FUNC6(tmp, dst, 0, 8, 1);

	FUNC6(hash, dst, assoclen + cryptlen, authsize, 1);
	return 0;
}