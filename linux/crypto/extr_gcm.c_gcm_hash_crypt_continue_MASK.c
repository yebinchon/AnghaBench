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
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  cryptlen; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 struct crypto_gcm_req_priv_ctx* FUNC0 (struct aead_request*) ; 
 int FUNC1 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcm_hash_crypt_remain_done ; 
 scalar_t__ FUNC2 (struct aead_request*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct aead_request *req, u32 flags)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC0(req);
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	unsigned int remain;

	remain = FUNC3(gctx->cryptlen);
	if (remain)
		return FUNC2(req, remain,
				       gcm_hash_crypt_remain_done, flags) ?:
		       FUNC1(req, flags);

	return FUNC1(req, flags);
}