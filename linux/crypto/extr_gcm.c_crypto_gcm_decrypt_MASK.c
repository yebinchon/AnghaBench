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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_gcm_ghash_ctx {unsigned int cryptlen; int /*<<< orphan*/  complete; int /*<<< orphan*/  src; } ;
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  src; struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 
 struct crypto_gcm_req_priv_ctx* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  gcm_dec_hash_continue ; 
 int FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC2(req);
	struct crypto_gcm_req_priv_ctx *pctx = FUNC4(req);
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	unsigned int authsize = FUNC1(aead);
	unsigned int cryptlen = req->cryptlen;
	u32 flags = FUNC0(req);

	cryptlen -= authsize;

	FUNC3(req);

	gctx->src = FUNC6(pctx->src);
	gctx->cryptlen = cryptlen;
	gctx->complete = gcm_dec_hash_continue;

	return FUNC5(req, flags);
}