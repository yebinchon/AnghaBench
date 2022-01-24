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
struct skcipher_request {int /*<<< orphan*/  base; } ;
struct crypto_skcipher {int dummy; } ;
struct cryptd_skcipher_request_ctx {int /*<<< orphan*/  (* complete ) (int /*<<< orphan*/ *,int) ;} ;
struct cryptd_skcipher_ctx {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher*) ; 
 struct cryptd_skcipher_ctx* FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct cryptd_skcipher_request_ctx* FUNC7 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct skcipher_request *req, int err)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct cryptd_skcipher_ctx *ctx = FUNC1(tfm);
	struct cryptd_skcipher_request_ctx *rctx = FUNC7(req);
	int refcnt = FUNC6(&ctx->refcnt);

	FUNC3();
	rctx->complete(&req->base, err);
	FUNC4();

	if (err != -EINPROGRESS && refcnt && FUNC5(&ctx->refcnt))
		FUNC0(tfm);
}