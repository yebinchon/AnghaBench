
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_object_ops {int (* oo_free_data ) (struct nl_object*) ;} ;
struct nl_object {scalar_t__ ce_refcnt; scalar_t__ ce_cache; } ;


 int NL_DBG (int,char*,...) ;
 int free (struct nl_object*) ;
 int nl_cache_remove (struct nl_object*) ;
 struct nl_object_ops* obj_ops (struct nl_object*) ;
 int stub1 (struct nl_object*) ;

void nl_object_free(struct nl_object *obj)
{
 struct nl_object_ops *ops = obj_ops(obj);

 if (obj->ce_refcnt > 0)
  NL_DBG(1, "Warning: Freeing object in use...\n");

 if (obj->ce_cache)
  nl_cache_remove(obj);

 if (ops->oo_free_data)
  ops->oo_free_data(obj);

 free(obj);

 NL_DBG(4, "Freed object %p\n", obj);
}
