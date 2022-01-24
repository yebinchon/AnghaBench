#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct crypto_tfm {int dummy; } ;
struct TYPE_6__ {unsigned long offset; void* page; } ;
struct TYPE_5__ {unsigned long offset; void* page; } ;
struct ablkcipher_walk {unsigned int total; unsigned int nbytes; TYPE_3__ dst; TYPE_2__ src; int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; struct crypto_tfm* tfm; } ;
struct ablkcipher_request {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABLKCIPHER_WALK_SLOW ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_BLOCK_LEN ; 
 int /*<<< orphan*/  EINVAL ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct ablkcipher_request*,struct ablkcipher_walk*) ; 
 int FUNC1 (struct ablkcipher_request*,struct ablkcipher_walk*,unsigned int,unsigned int,void**,void**) ; 
 int FUNC2 (struct ablkcipher_request*,struct ablkcipher_walk*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct crypto_tfm*) ; 
 unsigned int FUNC4 (struct crypto_tfm*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 
 void* FUNC9 (void*) ; 

__attribute__((used)) static int FUNC10(struct ablkcipher_request *req,
				struct ablkcipher_walk *walk)
{
	struct crypto_tfm *tfm = req->base.tfm;
	unsigned int alignmask, bsize, n;
	void *src, *dst;
	int err;

	alignmask = FUNC3(tfm);
	n = walk->total;
	if (FUNC8(n < FUNC4(tfm))) {
		req->base.flags |= CRYPTO_TFM_RES_BAD_BLOCK_LEN;
		return FUNC2(req, walk, -EINVAL);
	}

	walk->flags &= ~ABLKCIPHER_WALK_SLOW;
	src = dst = NULL;

	bsize = FUNC5(walk->blocksize, n);
	n = FUNC7(&walk->in, n);
	n = FUNC7(&walk->out, n);

	if (n < bsize ||
	    !FUNC6(&walk->in, alignmask) ||
	    !FUNC6(&walk->out, alignmask)) {
		err = FUNC1(req, walk, bsize, alignmask,
					   &src, &dst);
		goto set_phys_lowmem;
	}

	walk->nbytes = n;

	return FUNC0(req, walk);

set_phys_lowmem:
	if (err >= 0) {
		walk->src.page = FUNC9(src);
		walk->dst.page = FUNC9(dst);
		walk->src.offset = ((unsigned long)src & (PAGE_SIZE - 1));
		walk->dst.offset = ((unsigned long)dst & (PAGE_SIZE - 1));
	}

	return err;
}