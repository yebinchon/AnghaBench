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
struct skcipher_walk {int /*<<< orphan*/  alignmask; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  stride; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  flags; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  total; int /*<<< orphan*/  oiv; int /*<<< orphan*/  iv; scalar_t__ nbytes; } ;
struct TYPE_2__ {int flags; } ;
struct skcipher_request {TYPE_1__ base; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  SKCIPHER_WALK_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct skcipher_walk*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct skcipher_walk *walk,
				  struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC3(req);

	walk->total = req->cryptlen;
	walk->nbytes = 0;
	walk->iv = req->iv;
	walk->oiv = req->iv;

	if (FUNC7(!walk->total))
		return 0;

	FUNC5(&walk->in, req->src);
	FUNC5(&walk->out, req->dst);

	walk->flags &= ~SKCIPHER_WALK_SLEEP;
	walk->flags |= req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
		       SKCIPHER_WALK_SLEEP : 0;

	walk->blocksize = FUNC1(tfm);
	walk->stride = FUNC4(tfm);
	walk->ivsize = FUNC2(tfm);
	walk->alignmask = FUNC0(tfm);

	return FUNC6(walk);
}