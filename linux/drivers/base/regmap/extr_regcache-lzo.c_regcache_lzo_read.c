
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {struct regcache_lzo_ctx** cache; } ;
struct regcache_lzo_ctx {size_t dst_len; size_t src_len; void* dst; void* src; } ;


 int kfree (void*) ;
 unsigned int regcache_get_val (struct regmap*,void*,int) ;
 int regcache_lzo_decompress_cache_block (struct regmap*,struct regcache_lzo_ctx*) ;
 int regcache_lzo_get_blkindex (struct regmap*,unsigned int) ;
 int regcache_lzo_get_blkpos (struct regmap*,unsigned int) ;

__attribute__((used)) static int regcache_lzo_read(struct regmap *map,
        unsigned int reg, unsigned int *value)
{
 struct regcache_lzo_ctx *lzo_block, **lzo_blocks;
 int ret, blkindex, blkpos;
 size_t tmp_dst_len;
 void *tmp_dst;


 blkindex = regcache_lzo_get_blkindex(map, reg);

 blkpos = regcache_lzo_get_blkpos(map, reg);
 lzo_blocks = map->cache;
 lzo_block = lzo_blocks[blkindex];


 tmp_dst = lzo_block->dst;
 tmp_dst_len = lzo_block->dst_len;


 lzo_block->src = lzo_block->dst;
 lzo_block->src_len = lzo_block->dst_len;


 ret = regcache_lzo_decompress_cache_block(map, lzo_block);
 if (ret >= 0)

  *value = regcache_get_val(map, lzo_block->dst, blkpos);

 kfree(lzo_block->dst);

 lzo_block->dst = tmp_dst;
 lzo_block->dst_len = tmp_dst_len;

 return ret;
}
