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
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  complete; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  src; } ;
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {scalar_t__ src; scalar_t__ dst; int /*<<< orphan*/  cryptlen; } ;

/* Variables and functions */
 struct crypto_gcm_req_priv_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  gcm_enc_copy_hash ; 
 int FUNC1 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req, u32 flags)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC0(req);
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

	gctx->src = FUNC2(req->src == req->dst ? pctx->src : pctx->dst);
	gctx->cryptlen = req->cryptlen;
	gctx->complete = gcm_enc_copy_hash;

	return FUNC1(req, flags);
}