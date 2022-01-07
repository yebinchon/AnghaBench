
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cache_ops {int co_name; struct nl_cache_ops* co_next; int co_obj_ops; } ;


 int NLE_EXIST ;
 int NLE_INVAL ;
 int NL_DBG (int,char*,int ) ;
 struct nl_cache_ops* cache_ops ;
 scalar_t__ nl_cache_ops_lookup (int ) ;

int nl_cache_mngt_register(struct nl_cache_ops *ops)
{
 if (!ops->co_name || !ops->co_obj_ops)
  return -NLE_INVAL;

 if (nl_cache_ops_lookup(ops->co_name))
  return -NLE_EXIST;

 ops->co_next = cache_ops;
 cache_ops = ops;

 NL_DBG(1, "Registered cache operations %s\n", ops->co_name);

 return 0;
}
