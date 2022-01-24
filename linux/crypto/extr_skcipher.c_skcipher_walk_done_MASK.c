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
struct TYPE_3__ {scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; unsigned int total; int flags; scalar_t__ page; scalar_t__ buffer; scalar_t__ iv; scalar_t__ oiv; unsigned int ivsize; int /*<<< orphan*/  out; int /*<<< orphan*/  in; TYPE_2__ dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINVAL ; 
 int SKCIPHER_WALK_COPY ; 
 int SKCIPHER_WALK_DIFF ; 
 int SKCIPHER_WALK_PHYS ; 
 int SKCIPHER_WALK_SLEEP ; 
 int SKCIPHER_WALK_SLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,unsigned int) ; 
 unsigned int FUNC7 (struct skcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_walk*) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_walk*) ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_walk*) ; 
 int FUNC11 (struct skcipher_walk*) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct skcipher_walk *walk, int err)
{
	unsigned int n = walk->nbytes;
	unsigned int nbytes = 0;

	if (!n)
		goto finish;

	if (FUNC3(err >= 0)) {
		n -= err;
		nbytes = walk->total - n;
	}

	if (FUNC3(!(walk->flags & (SKCIPHER_WALK_PHYS |
				    SKCIPHER_WALK_SLOW |
				    SKCIPHER_WALK_COPY |
				    SKCIPHER_WALK_DIFF)))) {
unmap_src:
		FUNC10(walk);
	} else if (walk->flags & SKCIPHER_WALK_DIFF) {
		FUNC9(walk);
		goto unmap_src;
	} else if (walk->flags & SKCIPHER_WALK_COPY) {
		FUNC8(walk);
		FUNC4(walk->dst.virt.addr, walk->page, n);
		FUNC9(walk);
	} else if (FUNC12(walk->flags & SKCIPHER_WALK_SLOW)) {
		if (err > 0) {
			/*
			 * Didn't process all bytes.  Either the algorithm is
			 * broken, or this was the last step and it turned out
			 * the message wasn't evenly divisible into blocks but
			 * the algorithm requires it.
			 */
			err = -EINVAL;
			nbytes = 0;
		} else
			n = FUNC7(walk, n);
	}

	if (err > 0)
		err = 0;

	walk->total = nbytes;
	walk->nbytes = 0;

	FUNC5(&walk->in, n);
	FUNC5(&walk->out, n);
	FUNC6(&walk->in, 0, nbytes);
	FUNC6(&walk->out, 1, nbytes);

	if (nbytes) {
		FUNC0(walk->flags & SKCIPHER_WALK_SLEEP ?
			     CRYPTO_TFM_REQ_MAY_SLEEP : 0);
		return FUNC11(walk);
	}

finish:
	/* Short-circuit for the common/fast path. */
	if (!((unsigned long)walk->buffer | (unsigned long)walk->page))
		goto out;

	if (walk->flags & SKCIPHER_WALK_PHYS)
		goto out;

	if (walk->iv != walk->oiv)
		FUNC4(walk->oiv, walk->iv, walk->ivsize);
	if (walk->buffer != walk->page)
		FUNC2(walk->buffer);
	if (walk->page)
		FUNC1((unsigned long)walk->page);

out:
	return err;
}