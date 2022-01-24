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
struct crypto_async_request {int dummy; } ;
struct cryptd_hash_request_ctx {int /*<<< orphan*/  complete; int /*<<< orphan*/  desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  complete; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct cryptd_hash_request_ctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int) ; 
 int FUNC3 (struct ahash_request*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct crypto_async_request *req_async, int err)
{
	struct ahash_request *req = FUNC0(req_async);
	struct cryptd_hash_request_ctx *rctx = FUNC1(req);

	if (FUNC4(err == -EINPROGRESS))
		goto out;

	err = FUNC3(req, &rctx->desc);

	req->base.complete = rctx->complete;

out:
	FUNC2(req, err);
}