#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  protkey; } ;
struct s390_paes_ctx {unsigned long fc; TYPE_1__ pk; } ;
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {TYPE_4__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_2__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_5__ src; TYPE_3__ dst; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 unsigned int EIO ; 
 scalar_t__ FUNC0 (struct s390_paes_ctx*) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 unsigned int FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct s390_paes_ctx* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct blkcipher_desc *desc,
			  unsigned long modifier,
			  struct blkcipher_walk *walk)
{
	struct s390_paes_ctx *ctx = FUNC4(desc->tfm);
	unsigned int nbytes, n, k;
	int ret;

	ret = FUNC2(desc, walk);
	while ((nbytes = walk->nbytes) >= AES_BLOCK_SIZE) {
		/* only use complete blocks */
		n = nbytes & ~(AES_BLOCK_SIZE - 1);
		k = FUNC3(ctx->fc | modifier, ctx->pk.protkey,
			     walk->dst.virt.addr, walk->src.virt.addr, n);
		if (k)
			ret = FUNC1(desc, walk, nbytes - k);
		if (k < n) {
			if (FUNC0(ctx) != 0)
				return FUNC1(desc, walk, -EIO);
		}
	}
	return ret;
}