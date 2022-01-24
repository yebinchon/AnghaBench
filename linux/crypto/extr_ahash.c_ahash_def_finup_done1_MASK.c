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
struct crypto_async_request {struct ahash_request* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;int /*<<< orphan*/  flags; } ;
struct ahash_request {TYPE_1__ base; scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINPROGRESS ; 
 int FUNC0 (struct ahash_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(struct crypto_async_request *req, int err)
{
	struct ahash_request *areq = req->data;

	if (err == -EINPROGRESS) {
		FUNC1(areq);
		return;
	}

	areq->base.flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

	err = FUNC0(areq, err);
	if (areq->priv)
		return;

	areq->base.complete(&areq->base, err);
}