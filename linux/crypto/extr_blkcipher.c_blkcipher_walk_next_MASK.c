#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int offset; void* page; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {TYPE_5__ phys; TYPE_2__ virt; } ;
struct TYPE_9__ {int offset; void* page; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {TYPE_3__ phys; TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int total; unsigned int cipher_blocksize; int flags; unsigned int nbytes; TYPE_6__ dst; TYPE_4__ src; int /*<<< orphan*/  alignmask; int /*<<< orphan*/  out; int /*<<< orphan*/  in; void* page; int /*<<< orphan*/  walk_blocksize; } ;
struct blkcipher_desc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BLKCIPHER_WALK_COPY ; 
 int BLKCIPHER_WALK_DIFF ; 
 int BLKCIPHER_WALK_PHYS ; 
 int BLKCIPHER_WALK_SLOW ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_BLOCK_LEN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct blkcipher_walk*) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct blkcipher_desc*,struct blkcipher_walk*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct blkcipher_desc *desc,
			       struct blkcipher_walk *walk)
{
	unsigned int bsize;
	unsigned int n;
	int err;

	n = walk->total;
	if (FUNC8(n < walk->cipher_blocksize)) {
		desc->flags |= CRYPTO_TFM_RES_BAD_BLOCK_LEN;
		return FUNC4(desc, walk, -EINVAL);
	}

	bsize = FUNC5(walk->walk_blocksize, n);

	walk->flags &= ~(BLKCIPHER_WALK_SLOW | BLKCIPHER_WALK_COPY |
			 BLKCIPHER_WALK_DIFF);
	if (!FUNC6(&walk->in, walk->alignmask) ||
	    !FUNC6(&walk->out, walk->alignmask)) {
		walk->flags |= BLKCIPHER_WALK_COPY;
		if (!walk->page) {
			walk->page = (void *)FUNC0(GFP_ATOMIC);
			if (!walk->page)
				n = 0;
		}
	}

	n = FUNC7(&walk->in, n);
	n = FUNC7(&walk->out, n);

	if (FUNC8(n < bsize)) {
		err = FUNC3(desc, walk, bsize, walk->alignmask);
		goto set_phys_lowmem;
	}

	walk->nbytes = n;
	if (walk->flags & BLKCIPHER_WALK_COPY) {
		err = FUNC1(walk);
		goto set_phys_lowmem;
	}

	return FUNC2(desc, walk);

set_phys_lowmem:
	if (walk->flags & BLKCIPHER_WALK_PHYS) {
		walk->src.phys.page = FUNC9(walk->src.virt.addr);
		walk->dst.phys.page = FUNC9(walk->dst.virt.addr);
		walk->src.phys.offset &= PAGE_SIZE - 1;
		walk->dst.phys.offset &= PAGE_SIZE - 1;
	}
	return err;
}