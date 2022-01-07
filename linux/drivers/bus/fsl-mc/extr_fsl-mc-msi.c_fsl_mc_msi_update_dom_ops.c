
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_ops {scalar_t__ set_desc; } ;
struct msi_domain_info {struct msi_domain_ops* ops; } ;


 scalar_t__ fsl_mc_msi_set_desc ;

__attribute__((used)) static void fsl_mc_msi_update_dom_ops(struct msi_domain_info *info)
{
 struct msi_domain_ops *ops = info->ops;

 if (!ops)
  return;




 if (!ops->set_desc)
  ops->set_desc = fsl_mc_msi_set_desc;
}
