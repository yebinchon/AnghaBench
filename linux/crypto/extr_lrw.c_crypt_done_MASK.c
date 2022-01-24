#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skcipher_request {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct rctx {TYPE_2__ subreq; } ;
struct crypto_async_request {struct skcipher_request* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct skcipher_request*,int) ; 
 struct rctx* FUNC1 (struct skcipher_request*) ; 
 int FUNC2 (struct skcipher_request*) ; 

__attribute__((used)) static void FUNC3(struct crypto_async_request *areq, int err)
{
	struct skcipher_request *req = areq->data;

	if (!err) {
		struct rctx *rctx = FUNC1(req);

		rctx->subreq.base.flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
		err = FUNC2(req);
	}

	FUNC0(req, err);
}