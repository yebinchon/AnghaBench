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
struct skcipher_walk {int /*<<< orphan*/  flags; int /*<<< orphan*/  alignmask; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  stride; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  total; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  oiv; int /*<<< orphan*/  iv; scalar_t__ nbytes; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {TYPE_1__ base; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  SKCIPHER_WALK_PHYS ; 
 int /*<<< orphan*/  SKCIPHER_WALK_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct skcipher_walk*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct skcipher_walk *walk,
				     struct aead_request *req, bool atomic)
{
	struct crypto_aead *tfm = FUNC4(req);
	int err;

	walk->nbytes = 0;
	walk->iv = req->iv;
	walk->oiv = req->iv;

	if (FUNC9(!walk->total))
		return 0;

	walk->flags &= ~SKCIPHER_WALK_PHYS;

	FUNC7(&walk->in, req->src);
	FUNC7(&walk->out, req->dst);

	FUNC5(NULL, &walk->in, req->assoclen, 2);
	FUNC5(NULL, &walk->out, req->assoclen, 2);

	FUNC6(&walk->in, 0, walk->total);
	FUNC6(&walk->out, 0, walk->total);

	if (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP)
		walk->flags |= SKCIPHER_WALK_SLEEP;
	else
		walk->flags &= ~SKCIPHER_WALK_SLEEP;

	walk->blocksize = FUNC1(tfm);
	walk->stride = FUNC2(tfm);
	walk->ivsize = FUNC3(tfm);
	walk->alignmask = FUNC0(tfm);

	err = FUNC8(walk);

	if (atomic)
		walk->flags &= ~SKCIPHER_WALK_SLEEP;

	return err;
}