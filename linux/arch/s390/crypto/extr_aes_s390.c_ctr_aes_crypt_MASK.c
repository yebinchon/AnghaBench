#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct s390_aes_ctx {unsigned long fc; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int /*<<< orphan*/ * iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct s390_aes_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ctrblk ; 
 int /*<<< orphan*/  ctrblk_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct blkcipher_desc *desc, unsigned long modifier,
			 struct blkcipher_walk *walk)
{
	struct s390_aes_ctx *sctx = FUNC4(desc->tfm);
	u8 buf[AES_BLOCK_SIZE], *ctrptr;
	unsigned int n, nbytes;
	int ret, locked;

	locked = FUNC7(&ctrblk_lock);

	ret = FUNC2(desc, walk, AES_BLOCK_SIZE);
	while ((nbytes = walk->nbytes) >= AES_BLOCK_SIZE) {
		n = AES_BLOCK_SIZE;
		if (nbytes >= 2*AES_BLOCK_SIZE && locked)
			n = FUNC0(ctrblk, walk->iv, nbytes);
		ctrptr = (n > AES_BLOCK_SIZE) ? ctrblk : walk->iv;
		FUNC3(sctx->fc | modifier, sctx->key,
			    walk->dst.virt.addr, walk->src.virt.addr,
			    n, ctrptr);
		if (ctrptr == ctrblk)
			FUNC6(walk->iv, ctrptr + n - AES_BLOCK_SIZE,
			       AES_BLOCK_SIZE);
		FUNC5(walk->iv, AES_BLOCK_SIZE);
		ret = FUNC1(desc, walk, nbytes - n);
	}
	if (locked)
		FUNC8(&ctrblk_lock);
	/*
	 * final block may be < AES_BLOCK_SIZE, copy only nbytes
	 */
	if (nbytes) {
		FUNC3(sctx->fc | modifier, sctx->key,
			    buf, walk->src.virt.addr,
			    AES_BLOCK_SIZE, walk->iv);
		FUNC6(walk->dst.virt.addr, buf, nbytes);
		FUNC5(walk->iv, AES_BLOCK_SIZE);
		ret = FUNC1(desc, walk, 0);
	}

	return ret;
}