
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct regcache_rbtree_node {int block; int cache_present; } ;


 int regcache_set_val (struct regmap*,int ,unsigned int,unsigned int) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static void regcache_rbtree_set_register(struct regmap *map,
      struct regcache_rbtree_node *rbnode,
      unsigned int idx, unsigned int val)
{
 set_bit(idx, rbnode->cache_present);
 regcache_set_val(map, rbnode->block, idx, val);
}
