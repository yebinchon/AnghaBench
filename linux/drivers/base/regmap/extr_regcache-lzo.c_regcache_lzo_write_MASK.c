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
struct regmap {unsigned int reg_stride; struct regcache_lzo_ctx** cache; } ;
struct regcache_lzo_ctx {void* dst; size_t dst_len; void* src; size_t src_len; int /*<<< orphan*/  sync_bmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (struct regmap*,struct regcache_lzo_ctx*) ; 
 int FUNC2 (struct regmap*,struct regcache_lzo_ctx*) ; 
 int FUNC3 (struct regmap*,unsigned int) ; 
 int FUNC4 (struct regmap*,unsigned int) ; 
 scalar_t__ FUNC5 (struct regmap*,void*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct regmap *map,
			      unsigned int reg, unsigned int value)
{
	struct regcache_lzo_ctx *lzo_block, **lzo_blocks;
	int ret, blkindex, blkpos;
	size_t tmp_dst_len;
	void *tmp_dst;

	/* index of the compressed lzo block */
	blkindex = FUNC3(map, reg);
	/* register index within the decompressed block */
	blkpos = FUNC4(map, reg);
	lzo_blocks = map->cache;
	lzo_block = lzo_blocks[blkindex];

	/* save the pointer and length of the compressed block */
	tmp_dst = lzo_block->dst;
	tmp_dst_len = lzo_block->dst_len;

	/* prepare the source to be the compressed block */
	lzo_block->src = lzo_block->dst;
	lzo_block->src_len = lzo_block->dst_len;

	/* decompress the block */
	ret = FUNC2(map, lzo_block);
	if (ret < 0) {
		FUNC0(lzo_block->dst);
		goto out;
	}

	/* write the new value to the cache */
	if (FUNC5(map, lzo_block->dst, blkpos, value)) {
		FUNC0(lzo_block->dst);
		goto out;
	}

	/* prepare the source to be the decompressed block */
	lzo_block->src = lzo_block->dst;
	lzo_block->src_len = lzo_block->dst_len;

	/* compress the block */
	ret = FUNC1(map, lzo_block);
	if (ret < 0) {
		FUNC0(lzo_block->dst);
		FUNC0(lzo_block->src);
		goto out;
	}

	/* set the bit so we know we have to sync this register */
	FUNC6(reg / map->reg_stride, lzo_block->sync_bmp);
	FUNC0(tmp_dst);
	FUNC0(lzo_block->src);
	return 0;
out:
	lzo_block->dst = tmp_dst;
	lzo_block->dst_len = tmp_dst_len;
	return ret;
}