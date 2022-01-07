
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_object {struct nl_cache* ce_cache; int ce_list; } ;
struct nl_cache {int c_nitems; } ;


 int NL_DBG (int,char*,struct nl_object*,struct nl_cache*,int ) ;
 int nl_cache_name (struct nl_cache*) ;
 int nl_list_del (int *) ;
 int nl_object_put (struct nl_object*) ;

void nl_cache_remove(struct nl_object *obj)
{
 struct nl_cache *cache = obj->ce_cache;

 if (cache == ((void*)0))
  return;

 nl_list_del(&obj->ce_list);
 obj->ce_cache = ((void*)0);
 nl_object_put(obj);
 cache->c_nitems--;

 NL_DBG(1, "Deleted %p from cache %p <%s>.\n",
        obj, cache, nl_cache_name(cache));
}
