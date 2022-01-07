
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cache {int dummy; } ;


 int GFP_KERNEL ;
 int cache_init (struct cache*,int,int,struct device_node*) ;
 struct cache* kzalloc (int,int ) ;

__attribute__((used)) static struct cache *new_cache(int type, int level, struct device_node *ofnode)
{
 struct cache *cache;

 cache = kzalloc(sizeof(*cache), GFP_KERNEL);
 if (cache)
  cache_init(cache, type, level, ofnode);

 return cache;
}
