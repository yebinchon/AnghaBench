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
struct blkcipher_walk {int /*<<< orphan*/  alignmask; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  walk_blocksize; int /*<<< orphan*/  cipher_blocksize; int /*<<< orphan*/  flags; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKCIPHER_WALK_PHYS ; 
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct blkcipher_desc *desc,
			struct blkcipher_walk *walk)
{
	walk->flags |= BLKCIPHER_WALK_PHYS;
	walk->walk_blocksize = FUNC2(desc->tfm);
	walk->cipher_blocksize = walk->walk_blocksize;
	walk->ivsize = FUNC3(desc->tfm);
	walk->alignmask = FUNC1(desc->tfm);
	return FUNC0(desc, walk);
}