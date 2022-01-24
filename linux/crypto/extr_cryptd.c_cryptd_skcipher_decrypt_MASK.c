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
struct TYPE_2__ {int /*<<< orphan*/  complete; } ;
struct skcipher_request {TYPE_1__ base; int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct crypto_sync_skcipher {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_async_request {int dummy; } ;
struct cryptd_skcipher_request_ctx {int /*<<< orphan*/  complete; } ;
struct cryptd_skcipher_ctx {struct crypto_sync_skcipher* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*,int) ; 
 struct cryptd_skcipher_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 struct skcipher_request* FUNC5 (struct crypto_async_request*) ; 
 struct cryptd_skcipher_request_ctx* FUNC6 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct crypto_async_request *base,
				    int err)
{
	struct skcipher_request *req = FUNC5(base);
	struct cryptd_skcipher_request_ctx *rctx = FUNC6(req);
	struct crypto_skcipher *tfm = FUNC4(req);
	struct cryptd_skcipher_ctx *ctx = FUNC2(tfm);
	struct crypto_sync_skcipher *child = ctx->child;
	FUNC0(subreq, child);

	if (FUNC11(err == -EINPROGRESS))
		goto out;

	FUNC9(subreq, child);
	FUNC7(subreq, CRYPTO_TFM_REQ_MAY_SLEEP,
				      NULL, NULL);
	FUNC8(subreq, req->src, req->dst, req->cryptlen,
				   req->iv);

	err = FUNC3(subreq);
	FUNC10(subreq);

	req->base.complete = rctx->complete;

out:
	FUNC1(req, err);
}