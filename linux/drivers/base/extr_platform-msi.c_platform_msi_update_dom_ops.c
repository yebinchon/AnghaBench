
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_ops {int * set_desc; int * msi_init; } ;
struct msi_domain_info {struct msi_domain_ops* ops; } ;


 int BUG_ON (int) ;
 int * platform_msi_init ;
 int * platform_msi_set_desc ;

__attribute__((used)) static void platform_msi_update_dom_ops(struct msi_domain_info *info)
{
 struct msi_domain_ops *ops = info->ops;

 BUG_ON(!ops);

 if (ops->msi_init == ((void*)0))
  ops->msi_init = platform_msi_init;
 if (ops->set_desc == ((void*)0))
  ops->set_desc = platform_msi_set_desc;
}
