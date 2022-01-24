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
typedef  unsigned long u8 ;
struct regmap {unsigned int reg_stride; unsigned int cache_word_size; } ;
struct regcache_rbtree_node {unsigned int base_reg; unsigned long* block; unsigned int blklen; unsigned long* cache_present; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 void* FUNC3 (unsigned long*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,struct regcache_rbtree_node*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct regmap *map,
					   struct regcache_rbtree_node *rbnode,
					   unsigned int base_reg,
					   unsigned int top_reg,
					   unsigned int reg,
					   unsigned int value)
{
	unsigned int blklen;
	unsigned int pos, offset;
	unsigned long *present;
	u8 *blk;

	blklen = (top_reg - base_reg) / map->reg_stride + 1;
	pos = (reg - base_reg) / map->reg_stride;
	offset = (rbnode->base_reg - base_reg) / map->reg_stride;

	blk = FUNC3(rbnode->block,
		       blklen * map->cache_word_size,
		       GFP_KERNEL);
	if (!blk)
		return -ENOMEM;

	if (FUNC0(blklen) > FUNC0(rbnode->blklen)) {
		present = FUNC3(rbnode->cache_present,
				   FUNC0(blklen) * sizeof(*present),
				   GFP_KERNEL);
		if (!present) {
			FUNC2(blk);
			return -ENOMEM;
		}

		FUNC5(present + FUNC0(rbnode->blklen), 0,
		       (FUNC0(blklen) - FUNC0(rbnode->blklen))
		       * sizeof(*present));
	} else {
		present = rbnode->cache_present;
	}

	/* insert the register value in the correct place in the rbnode block */
	if (pos == 0) {
		FUNC4(blk + offset * map->cache_word_size,
			blk, rbnode->blklen * map->cache_word_size);
		FUNC1(present, present, offset, blklen);
	}

	/* update the rbnode block, its size and the base register */
	rbnode->block = blk;
	rbnode->blklen = blklen;
	rbnode->base_reg = base_reg;
	rbnode->cache_present = present;

	FUNC6(map, rbnode, pos, value);
	return 0;
}