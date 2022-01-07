
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_object {int ce_list; struct nl_cache* ce_cache; } ;
struct nl_cache {int c_nitems; int c_items; } ;


 int NL_DBG (int,char*,struct nl_object*,struct nl_cache*,int ) ;
 int nl_cache_name (struct nl_cache*) ;
 int nl_list_add_tail (int *,int *) ;

__attribute__((used)) static int __cache_add(struct nl_cache *cache, struct nl_object *obj)
{
 obj->ce_cache = cache;

 nl_list_add_tail(&obj->ce_list, &cache->c_items);
 cache->c_nitems++;

 NL_DBG(1, "Added %p to cache %p <%s>.\n",
        obj, cache, nl_cache_name(cache));

 return 0;
}
