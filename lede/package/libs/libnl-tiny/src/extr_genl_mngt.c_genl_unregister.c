
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nl_cache_ops {TYPE_1__* co_genl; } ;
struct TYPE_2__ {int o_list; } ;


 int nl_cache_mngt_unregister (struct nl_cache_ops*) ;
 int nl_list_del (int *) ;

void genl_unregister(struct nl_cache_ops *ops)
{
 nl_cache_mngt_unregister(ops);
 nl_list_del(&ops->co_genl->o_list);
}
