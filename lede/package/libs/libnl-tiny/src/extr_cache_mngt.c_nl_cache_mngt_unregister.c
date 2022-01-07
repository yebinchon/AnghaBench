
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cache_ops {struct nl_cache_ops* co_next; int co_name; } ;


 int NLE_NOCACHE ;
 int NL_DBG (int,char*,int ) ;
 struct nl_cache_ops* cache_ops ;

int nl_cache_mngt_unregister(struct nl_cache_ops *ops)
{
 struct nl_cache_ops *t, **tp;

 for (tp = &cache_ops; (t=*tp) != ((void*)0); tp = &t->co_next)
  if (t == ops)
   break;

 if (!t)
  return -NLE_NOCACHE;

 NL_DBG(1, "Unregistered cache operations %s\n", ops->co_name);

 *tp = t->co_next;
 return 0;
}
