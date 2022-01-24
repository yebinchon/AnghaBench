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
struct regmap {struct regcache_lzo_ctx** cache; } ;
struct regcache_lzo_ctx {size_t dst_len; size_t src_len; void* dst; void* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 unsigned int FUNC1 (struct regmap*,void*,int) ; 
 int FUNC2 (struct regmap*,struct regcache_lzo_ctx*) ; 
 int FUNC3 (struct regmap*,unsigned int) ; 
 int FUNC4 (struct regmap*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct regmap *map,
			     unsigned int reg, unsigned int *value)
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
	if (ret >= 0)
		/* fetch the value from the cache */
		*value = FUNC1(map, lzo_block->dst, blkpos);

	FUNC0(lzo_block->dst);
	/* restore the pointer and length of the compressed block */
	lzo_block->dst = tmp_dst;
	lzo_block->dst_len = tmp_dst_len;

	return ret;
}