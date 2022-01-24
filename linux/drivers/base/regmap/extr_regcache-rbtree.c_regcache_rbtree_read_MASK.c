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
struct regmap {unsigned int reg_stride; } ;
struct regcache_rbtree_node {unsigned int base_reg; int /*<<< orphan*/  cache_present; } ;

/* Variables and functions */
 int ENOENT ; 
 unsigned int FUNC0 (struct regmap*,struct regcache_rbtree_node*,unsigned int) ; 
 struct regcache_rbtree_node* FUNC1 (struct regmap*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regmap *map,
				unsigned int reg, unsigned int *value)
{
	struct regcache_rbtree_node *rbnode;
	unsigned int reg_tmp;

	rbnode = FUNC1(map, reg);
	if (rbnode) {
		reg_tmp = (reg - rbnode->base_reg) / map->reg_stride;
		if (!FUNC2(reg_tmp, rbnode->cache_present))
			return -ENOENT;
		*value = FUNC0(map, rbnode, reg_tmp);
	} else {
		return -ENOENT;
	}

	return 0;
}