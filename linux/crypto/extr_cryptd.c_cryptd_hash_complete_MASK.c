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
struct crypto_ahash {int dummy; } ;
struct cryptd_hash_request_ctx {int /*<<< orphan*/  (* complete ) (int /*<<< orphan*/ *,int) ;} ;
struct cryptd_hash_ctx {int /*<<< orphan*/  refcnt; } ;
struct ahash_request {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 struct cryptd_hash_request_ctx* FUNC0 (struct ahash_request*) ; 
 struct cryptd_hash_ctx* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct ahash_request *req, int err)
{
	struct crypto_ahash *tfm = FUNC2(req);
	struct cryptd_hash_ctx *ctx = FUNC1(tfm);
	struct cryptd_hash_request_ctx *rctx = FUNC0(req);
	int refcnt = FUNC7(&ctx->refcnt);

	FUNC4();
	rctx->complete(&req->base, err);
	FUNC5();

	if (err != -EINPROGRESS && refcnt && FUNC6(&ctx->refcnt))
		FUNC3(tfm);
}