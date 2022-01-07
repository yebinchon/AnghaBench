
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int fsl_mc_get_root_dprc (struct device*,struct device**) ;

bool fsl_mc_is_root_dprc(struct device *dev)
{
 struct device *root_dprc_dev;

 fsl_mc_get_root_dprc(dev, &root_dprc_dev);
 if (!root_dprc_dev)
  return 0;
 return dev == root_dprc_dev;
}
