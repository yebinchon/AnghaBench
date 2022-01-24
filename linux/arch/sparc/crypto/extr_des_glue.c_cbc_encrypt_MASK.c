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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct des_sparc64_ctx {int /*<<< orphan*/ * encrypt_expkey; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 unsigned int DES_BLOCK_MASK ; 
 int DES_BLOCK_SIZE ; 
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 struct des_sparc64_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(struct blkcipher_desc *desc,
		       struct scatterlist *dst, struct scatterlist *src,
		       unsigned int nbytes)
{
	struct des_sparc64_ctx *ctx = FUNC3(desc->tfm);
	struct blkcipher_walk walk;
	int err;

	FUNC1(&walk, dst, src, nbytes);
	err = FUNC2(desc, &walk);
	desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

	FUNC5(&ctx->encrypt_expkey[0]);
	while ((nbytes = walk.nbytes)) {
		unsigned int block_len = nbytes & DES_BLOCK_MASK;

		if (FUNC7(block_len)) {
			FUNC4((const u64 *)walk.src.virt.addr,
						(u64 *) walk.dst.virt.addr,
						block_len, (u64 *) walk.iv);
		}
		nbytes &= DES_BLOCK_SIZE - 1;
		err = FUNC0(desc, &walk, nbytes);
	}
	FUNC6(0);
	return err;
}