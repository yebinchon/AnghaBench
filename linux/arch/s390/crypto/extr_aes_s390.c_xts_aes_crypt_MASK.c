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
struct s390_xts_ctx {int key_len; unsigned long fc; int /*<<< orphan*/ * key; int /*<<< orphan*/ * pcc_key; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; int /*<<< orphan*/ * iv; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 struct s390_xts_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct blkcipher_desc *desc, unsigned long modifier,
			 struct blkcipher_walk *walk)
{
	struct s390_xts_ctx *xts_ctx = FUNC4(desc->tfm);
	unsigned int offset, nbytes, n;
	int ret;
	struct {
		u8 key[32];
		u8 tweak[16];
		u8 block[16];
		u8 bit[16];
		u8 xts[16];
	} pcc_param;
	struct {
		u8 key[32];
		u8 init[16];
	} xts_param;

	ret = FUNC1(desc, walk);
	offset = xts_ctx->key_len & 0x10;
	FUNC6(pcc_param.block, 0, sizeof(pcc_param.block));
	FUNC6(pcc_param.bit, 0, sizeof(pcc_param.bit));
	FUNC6(pcc_param.xts, 0, sizeof(pcc_param.xts));
	FUNC5(pcc_param.tweak, walk->iv, sizeof(pcc_param.tweak));
	FUNC5(pcc_param.key + offset, xts_ctx->pcc_key, xts_ctx->key_len);
	FUNC3(xts_ctx->fc, pcc_param.key + offset);

	FUNC5(xts_param.key + offset, xts_ctx->key, xts_ctx->key_len);
	FUNC5(xts_param.init, pcc_param.xts, 16);

	while ((nbytes = walk->nbytes) >= AES_BLOCK_SIZE) {
		/* only use complete blocks */
		n = nbytes & ~(AES_BLOCK_SIZE - 1);
		FUNC2(xts_ctx->fc | modifier, xts_param.key + offset,
			 walk->dst.virt.addr, walk->src.virt.addr, n);
		ret = FUNC0(desc, walk, nbytes - n);
	}
	return ret;
}