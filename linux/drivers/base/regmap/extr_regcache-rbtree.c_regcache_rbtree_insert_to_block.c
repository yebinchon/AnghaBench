
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct regmap {unsigned int reg_stride; unsigned int cache_word_size; } ;
struct regcache_rbtree_node {unsigned int base_reg; unsigned long* block; unsigned int blklen; unsigned long* cache_present; } ;


 int BITS_TO_LONGS (unsigned int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_shift_left (unsigned long*,unsigned long*,unsigned int,unsigned int) ;
 int kfree (unsigned long*) ;
 void* krealloc (unsigned long*,int,int ) ;
 int memmove (unsigned long*,unsigned long*,int) ;
 int memset (unsigned long*,int ,int) ;
 int regcache_rbtree_set_register (struct regmap*,struct regcache_rbtree_node*,unsigned int,unsigned int) ;

__attribute__((used)) static int regcache_rbtree_insert_to_block(struct regmap *map,
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

 blk = krealloc(rbnode->block,
         blklen * map->cache_word_size,
         GFP_KERNEL);
 if (!blk)
  return -ENOMEM;

 if (BITS_TO_LONGS(blklen) > BITS_TO_LONGS(rbnode->blklen)) {
  present = krealloc(rbnode->cache_present,
       BITS_TO_LONGS(blklen) * sizeof(*present),
       GFP_KERNEL);
  if (!present) {
   kfree(blk);
   return -ENOMEM;
  }

  memset(present + BITS_TO_LONGS(rbnode->blklen), 0,
         (BITS_TO_LONGS(blklen) - BITS_TO_LONGS(rbnode->blklen))
         * sizeof(*present));
 } else {
  present = rbnode->cache_present;
 }


 if (pos == 0) {
  memmove(blk + offset * map->cache_word_size,
   blk, rbnode->blklen * map->cache_word_size);
  bitmap_shift_left(present, present, offset, blklen);
 }


 rbnode->block = blk;
 rbnode->blklen = blklen;
 rbnode->base_reg = base_reg;
 rbnode->cache_present = present;

 regcache_rbtree_set_register(map, rbnode, pos, value);
 return 0;
}
