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
typedef  int /*<<< orphan*/  u8 ;
struct skcipher_walk {unsigned int alignmask; unsigned int ivsize; unsigned int stride; int flags; int /*<<< orphan*/  iv; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int SKCIPHER_WALK_PHYS ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct skcipher_walk*) ; 

__attribute__((used)) static int FUNC7(struct skcipher_walk *walk)
{
	unsigned a = FUNC2() - 1;
	unsigned alignmask = walk->alignmask;
	unsigned ivsize = walk->ivsize;
	unsigned bs = walk->stride;
	unsigned aligned_bs;
	unsigned size;
	u8 *iv;

	aligned_bs = FUNC0(bs, alignmask + 1);

	/* Minimum size to align buffer by alignmask. */
	size = alignmask & ~a;

	if (walk->flags & SKCIPHER_WALK_PHYS)
		size += ivsize;
	else {
		size += aligned_bs + ivsize;

		/* Minimum size to ensure buffer does not straddle a page. */
		size += (bs - 1) & ~(alignmask | a);
	}

	walk->buffer = FUNC3(size, FUNC6(walk));
	if (!walk->buffer)
		return -ENOMEM;

	iv = FUNC1(walk->buffer, alignmask + 1);
	iv = FUNC5(iv, bs) + aligned_bs;

	walk->iv = FUNC4(iv, walk->iv, walk->ivsize);
	return 0;
}