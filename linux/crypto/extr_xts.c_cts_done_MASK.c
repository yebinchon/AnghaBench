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
struct skcipher_request {int dummy; } ;
struct rctx {int /*<<< orphan*/  tail; int /*<<< orphan*/  t; } ;
struct crypto_async_request {struct skcipher_request* data; } ;
typedef  int /*<<< orphan*/  le128 ;

/* Variables and functions */
 int /*<<< orphan*/  XTS_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_request*,int) ; 
 struct rctx* FUNC3 (struct skcipher_request*) ; 

__attribute__((used)) static void FUNC4(struct crypto_async_request *areq, int err)
{
	struct skcipher_request *req = areq->data;
	le128 b;

	if (!err) {
		struct rctx *rctx = FUNC3(req);

		FUNC1(&b, rctx->tail, 0, XTS_BLOCK_SIZE, 0);
		FUNC0(&b, &rctx->t, &b);
		FUNC1(&b, rctx->tail, 0, XTS_BLOCK_SIZE, 1);
	}

	FUNC2(req, err);
}