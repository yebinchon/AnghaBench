
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {unsigned int reg_stride; } ;
struct regcache_rbtree_node {unsigned int base_reg; int cache_present; } ;


 int ENOENT ;
 unsigned int regcache_rbtree_get_register (struct regmap*,struct regcache_rbtree_node*,unsigned int) ;
 struct regcache_rbtree_node* regcache_rbtree_lookup (struct regmap*,unsigned int) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static int regcache_rbtree_read(struct regmap *map,
    unsigned int reg, unsigned int *value)
{
 struct regcache_rbtree_node *rbnode;
 unsigned int reg_tmp;

 rbnode = regcache_rbtree_lookup(map, reg);
 if (rbnode) {
  reg_tmp = (reg - rbnode->base_reg) / map->reg_stride;
  if (!test_bit(reg_tmp, rbnode->cache_present))
   return -ENOENT;
  *value = regcache_rbtree_get_register(map, rbnode, reg_tmp);
 } else {
  return -ENOENT;
 }

 return 0;
}
