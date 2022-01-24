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
struct skcipher_request {int cryptlen; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct rctx {TYPE_2__ subreq; } ;
struct crypto_async_request {struct skcipher_request* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINPROGRESS ; 
 int XTS_BLOCK_SIZE ; 
 int /*<<< orphan*/  crypto_skcipher_encrypt ; 
 int FUNC0 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*,int) ; 
 struct rctx* FUNC2 (struct skcipher_request*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct skcipher_request*,int) ; 

__attribute__((used)) static void FUNC5(struct crypto_async_request *areq, int err)
{
	struct skcipher_request *req = areq->data;

	if (!err) {
		struct rctx *rctx = FUNC2(req);

		rctx->subreq.base.flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
		err = FUNC4(req, true);

		if (!err && FUNC3(req->cryptlen % XTS_BLOCK_SIZE)) {
			err = FUNC0(req, crypto_skcipher_encrypt);
			if (err == -EINPROGRESS)
				return;
		}
	}

	FUNC1(req, err);
}