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
struct crypto_hash_walk {int flags; int /*<<< orphan*/  sg; int /*<<< orphan*/  alignmask; scalar_t__ entrylen; int /*<<< orphan*/  total; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {TYPE_1__ base; int /*<<< orphan*/  src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct crypto_hash_walk*) ; 

int FUNC4(struct ahash_request *req,
			    struct crypto_hash_walk *walk)
{
	walk->total = req->nbytes;

	if (!walk->total) {
		walk->entrylen = 0;
		return 0;
	}

	walk->alignmask = FUNC1(FUNC2(req));
	walk->sg = req->src;
	walk->flags = req->base.flags & CRYPTO_TFM_REQ_MASK;
	walk->flags |= CRYPTO_ALG_ASYNC;

	FUNC0(CRYPTO_TFM_REQ_MASK & CRYPTO_ALG_ASYNC);

	return FUNC3(walk);
}