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
struct crypto_authenc_ctx {struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int /*<<< orphan*/ * tail; } ;
struct authenc_instance_ctx {int reqoff; } ;
struct ahash_request {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int /*<<< orphan*/  dst; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 struct aead_instance* FUNC1 (struct crypto_aead*) ; 
 struct authenc_instance_ctx* FUNC2 (struct aead_instance*) ; 
 struct authenc_request_ctx* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*,unsigned int,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ahash_request*,struct crypto_ahash*) ; 
 int /*<<< orphan*/  authenc_geniv_ahash_done ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_aead*) ; 
 struct crypto_authenc_ctx* FUNC8 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC9 (struct aead_request*) ; 
 scalar_t__ FUNC10 (struct crypto_ahash*) ; 
 int FUNC11 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct aead_request *req, unsigned int flags)
{
	struct crypto_aead *authenc = FUNC9(req);
	struct aead_instance *inst = FUNC1(authenc);
	struct crypto_authenc_ctx *ctx = FUNC8(authenc);
	struct authenc_instance_ctx *ictx = FUNC2(inst);
	struct crypto_ahash *auth = ctx->auth;
	struct authenc_request_ctx *areq_ctx = FUNC3(req);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ictx->reqoff);
	u8 *hash = areq_ctx->tail;
	int err;

	hash = (u8 *)FUNC0((unsigned long)hash + FUNC10(auth),
			   FUNC10(auth) + 1);

	FUNC6(ahreq, auth);
	FUNC5(ahreq, req->dst, hash,
				req->assoclen + req->cryptlen);
	FUNC4(ahreq, flags,
				   authenc_geniv_ahash_done, req);

	err = FUNC11(ahreq);
	if (err)
		return err;

	FUNC12(hash, req->dst, req->assoclen + req->cryptlen,
				 FUNC7(authenc), 1);

	return 0;
}