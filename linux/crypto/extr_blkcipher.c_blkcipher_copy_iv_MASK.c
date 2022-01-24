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
struct blkcipher_walk {unsigned int walk_blocksize; unsigned int alignmask; unsigned int ivsize; int /*<<< orphan*/  iv; scalar_t__ buffer; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline int FUNC6(struct blkcipher_walk *walk)
{
	unsigned bs = walk->walk_blocksize;
	unsigned aligned_bs = FUNC0(bs, walk->alignmask + 1);
	unsigned int size = aligned_bs * 2 +
			    walk->ivsize + FUNC4(aligned_bs, walk->ivsize) -
			    (walk->alignmask + 1);
	u8 *iv;

	size += walk->alignmask & ~(FUNC2() - 1);
	walk->buffer = FUNC3(size, GFP_ATOMIC);
	if (!walk->buffer)
		return -ENOMEM;

	iv = (u8 *)FUNC0((unsigned long)walk->buffer, walk->alignmask + 1);
	iv = FUNC1(iv, bs) + aligned_bs;
	iv = FUNC1(iv, bs) + aligned_bs;
	iv = FUNC1(iv, walk->ivsize);

	walk->iv = FUNC5(iv, walk->iv, walk->ivsize);
	return 0;
}