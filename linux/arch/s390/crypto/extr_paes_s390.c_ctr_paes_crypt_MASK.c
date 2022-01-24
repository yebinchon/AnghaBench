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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  protkey; } ;
struct s390_paes_ctx {unsigned long fc; TYPE_1__ pk; } ;
struct TYPE_9__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_10__ {TYPE_4__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_2__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int /*<<< orphan*/ * iv; TYPE_5__ dst; TYPE_3__ src; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 unsigned int EIO ; 
 scalar_t__ FUNC0 (struct s390_paes_ctx*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*,int) ; 
 int FUNC4 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct s390_paes_ctx* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ctrblk ; 
 int /*<<< orphan*/  ctrblk_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct blkcipher_desc *desc, unsigned long modifier,
			  struct blkcipher_walk *walk)
{
	struct s390_paes_ctx *ctx = FUNC5(desc->tfm);
	u8 buf[AES_BLOCK_SIZE], *ctrptr;
	unsigned int nbytes, n, k;
	int ret, locked;

	locked = FUNC8(&ctrblk_lock);

	ret = FUNC3(desc, walk, AES_BLOCK_SIZE);
	while ((nbytes = walk->nbytes) >= AES_BLOCK_SIZE) {
		n = AES_BLOCK_SIZE;
		if (nbytes >= 2*AES_BLOCK_SIZE && locked)
			n = FUNC1(ctrblk, walk->iv, nbytes);
		ctrptr = (n > AES_BLOCK_SIZE) ? ctrblk : walk->iv;
		k = FUNC4(ctx->fc | modifier, ctx->pk.protkey,
				walk->dst.virt.addr, walk->src.virt.addr,
				n, ctrptr);
		if (k) {
			if (ctrptr == ctrblk)
				FUNC7(walk->iv, ctrptr + k - AES_BLOCK_SIZE,
				       AES_BLOCK_SIZE);
			FUNC6(walk->iv, AES_BLOCK_SIZE);
			ret = FUNC2(desc, walk, nbytes - n);
		}
		if (k < n) {
			if (FUNC0(ctx) != 0) {
				if (locked)
					FUNC9(&ctrblk_lock);
				return FUNC2(desc, walk, -EIO);
			}
		}
	}
	if (locked)
		FUNC9(&ctrblk_lock);
	/*
	 * final block may be < AES_BLOCK_SIZE, copy only nbytes
	 */
	if (nbytes) {
		while (1) {
			if (FUNC4(ctx->fc | modifier,
					ctx->pk.protkey, buf,
					walk->src.virt.addr, AES_BLOCK_SIZE,
					walk->iv) == AES_BLOCK_SIZE)
				break;
			if (FUNC0(ctx) != 0)
				return FUNC2(desc, walk, -EIO);
		}
		FUNC7(walk->dst.virt.addr, buf, nbytes);
		FUNC6(walk->iv, AES_BLOCK_SIZE);
		ret = FUNC2(desc, walk, 0);
	}

	return ret;
}