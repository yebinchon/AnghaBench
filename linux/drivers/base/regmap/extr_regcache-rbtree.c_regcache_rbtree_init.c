
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int num_reg_defaults; TYPE_1__* reg_defaults; struct regcache_rbtree_ctx* cache; } ;
struct regcache_rbtree_ctx {int * cached_rbnode; int root; } ;
struct TYPE_2__ {int def; int reg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RB_ROOT ;
 struct regcache_rbtree_ctx* kmalloc (int,int ) ;
 int regcache_rbtree_exit (struct regmap*) ;
 int regcache_rbtree_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int regcache_rbtree_init(struct regmap *map)
{
 struct regcache_rbtree_ctx *rbtree_ctx;
 int i;
 int ret;

 map->cache = kmalloc(sizeof *rbtree_ctx, GFP_KERNEL);
 if (!map->cache)
  return -ENOMEM;

 rbtree_ctx = map->cache;
 rbtree_ctx->root = RB_ROOT;
 rbtree_ctx->cached_rbnode = ((void*)0);

 for (i = 0; i < map->num_reg_defaults; i++) {
  ret = regcache_rbtree_write(map,
         map->reg_defaults[i].reg,
         map->reg_defaults[i].def);
  if (ret)
   goto err;
 }

 return 0;

err:
 regcache_rbtree_exit(map);
 return ret;
}
