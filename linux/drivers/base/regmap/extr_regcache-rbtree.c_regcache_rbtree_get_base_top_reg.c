
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int reg_stride; } ;
struct regcache_rbtree_node {unsigned int base_reg; int blklen; } ;



__attribute__((used)) static inline void regcache_rbtree_get_base_top_reg(
 struct regmap *map,
 struct regcache_rbtree_node *rbnode,
 unsigned int *base, unsigned int *top)
{
 *base = rbnode->base_reg;
 *top = rbnode->base_reg + ((rbnode->blklen - 1) * map->reg_stride);
}
