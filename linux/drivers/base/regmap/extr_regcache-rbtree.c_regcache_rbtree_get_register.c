
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct regcache_rbtree_node {int block; } ;


 unsigned int regcache_get_val (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static unsigned int regcache_rbtree_get_register(struct regmap *map,
 struct regcache_rbtree_node *rbnode, unsigned int idx)
{
 return regcache_get_val(map, rbnode->block, idx);
}
