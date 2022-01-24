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
typedef  int /*<<< orphan*/  u32 ;
struct skcipher_request {int dummy; } ;
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  cryptlen; } ;
struct TYPE_2__ {struct skcipher_request skreq; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int /*<<< orphan*/ ) ; 
 struct crypto_gcm_req_priv_ctx* FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct aead_request*) ; 
 scalar_t__ FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  gcm_decrypt_done ; 
 int /*<<< orphan*/  FUNC4 (struct skcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 

__attribute__((used)) static int FUNC5(struct aead_request *req, u32 flags)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC1(req);
	struct skcipher_request *skreq = &pctx->u.skreq;
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

	FUNC0(req, gctx->cryptlen);
	FUNC4(skreq, flags, gcm_decrypt_done, req);
	return FUNC3(skreq) ?: FUNC2(req);
}