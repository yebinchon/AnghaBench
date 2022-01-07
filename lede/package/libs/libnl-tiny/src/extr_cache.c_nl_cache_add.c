
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nl_object {scalar_t__ ce_ops; int ce_list; } ;
struct nl_cache {TYPE_1__* c_ops; } ;
struct TYPE_2__ {scalar_t__ co_obj_ops; } ;


 int NLE_NOMEM ;
 int NLE_OBJ_MISMATCH ;
 int __cache_add (struct nl_cache*,struct nl_object*) ;
 int nl_list_empty (int *) ;
 struct nl_object* nl_object_clone (struct nl_object*) ;
 int nl_object_get (struct nl_object*) ;

int nl_cache_add(struct nl_cache *cache, struct nl_object *obj)
{
 struct nl_object *new;

 if (cache->c_ops->co_obj_ops != obj->ce_ops)
  return -NLE_OBJ_MISMATCH;

 if (!nl_list_empty(&obj->ce_list)) {
  new = nl_object_clone(obj);
  if (!new)
   return -NLE_NOMEM;
 } else {
  nl_object_get(obj);
  new = obj;
 }

 return __cache_add(cache, new);
}
