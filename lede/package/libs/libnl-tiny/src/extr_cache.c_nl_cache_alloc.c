
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cache_ops {int dummy; } ;
struct nl_cache {struct nl_cache_ops* c_ops; int c_items; } ;


 int NL_DBG (int,char*,struct nl_cache*,int ) ;
 struct nl_cache* calloc (int,int) ;
 int nl_cache_name (struct nl_cache*) ;
 int nl_init_list_head (int *) ;

struct nl_cache *nl_cache_alloc(struct nl_cache_ops *ops)
{
 struct nl_cache *cache;

 cache = calloc(1, sizeof(*cache));
 if (!cache)
  return ((void*)0);

 nl_init_list_head(&cache->c_items);
 cache->c_ops = ops;

 NL_DBG(2, "Allocated cache %p <%s>.\n", cache, nl_cache_name(cache));

 return cache;
}
