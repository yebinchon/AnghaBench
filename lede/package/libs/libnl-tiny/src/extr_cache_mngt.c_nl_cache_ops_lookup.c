
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cache_ops {int co_name; struct nl_cache_ops* co_next; } ;


 struct nl_cache_ops* cache_ops ;
 int strcmp (int ,char const*) ;

struct nl_cache_ops *nl_cache_ops_lookup(const char *name)
{
 struct nl_cache_ops *ops;

 for (ops = cache_ops; ops; ops = ops->co_next)
  if (!strcmp(ops->co_name, name))
   return ops;

 return ((void*)0);
}
