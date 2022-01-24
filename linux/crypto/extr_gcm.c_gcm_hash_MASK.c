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
struct ahash_request {int dummy; } ;
struct TYPE_2__ {struct ahash_request ahreq; } ;
struct crypto_gcm_req_priv_ctx {TYPE_1__ u; } ;
struct crypto_gcm_ctx {int /*<<< orphan*/  ghash; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 struct crypto_gcm_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 
 scalar_t__ FUNC4 (struct ahash_request*) ; 
 struct crypto_gcm_req_priv_ctx* FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcm_hash_init_done ; 

__attribute__((used)) static int FUNC7(struct aead_request *req, u32 flags)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC5(req);
	struct ahash_request *ahreq = &pctx->u.ahreq;
	struct crypto_gcm_ctx *ctx = FUNC2(FUNC3(req));

	FUNC1(ahreq, ctx->ghash);

	FUNC0(ahreq, flags, gcm_hash_init_done, req);
	return FUNC4(ahreq) ?:
	       FUNC6(req, flags);
}