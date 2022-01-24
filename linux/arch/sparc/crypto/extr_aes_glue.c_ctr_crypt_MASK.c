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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct crypto_sparc64_aes_ctx {int /*<<< orphan*/ * key; TYPE_1__* ops; } ;
struct TYPE_9__ {scalar_t__ addr; } ;
struct TYPE_10__ {TYPE_4__ virt; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_2__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_5__ dst; TYPE_3__ src; } ;
struct blkcipher_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ctr_crypt ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* load_encrypt_keys ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned int AES_BLOCK_MASK ; 
 unsigned int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 struct crypto_sparc64_aes_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_sparc64_aes_ctx*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct blkcipher_desc *desc,
		     struct scatterlist *dst, struct scatterlist *src,
		     unsigned int nbytes)
{
	struct crypto_sparc64_aes_ctx *ctx = FUNC3(desc->tfm);
	struct blkcipher_walk walk;
	int err;

	FUNC1(&walk, dst, src, nbytes);
	err = FUNC2(desc, &walk, AES_BLOCK_SIZE);
	desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

	ctx->ops->load_encrypt_keys(&ctx->key[0]);
	while ((nbytes = walk.nbytes) >= AES_BLOCK_SIZE) {
		unsigned int block_len = nbytes & AES_BLOCK_MASK;

		if (FUNC6(block_len)) {
			ctx->ops->ctr_crypt(&ctx->key[0],
					    (const u64 *)walk.src.virt.addr,
					    (u64 *) walk.dst.virt.addr,
					    block_len, (u64 *) walk.iv);
		}
		nbytes &= AES_BLOCK_SIZE - 1;
		err = FUNC0(desc, &walk, nbytes);
	}
	if (walk.nbytes) {
		FUNC4(ctx, &walk);
		err = FUNC0(desc, &walk, 0);
	}
	FUNC5(0);
	return err;
}