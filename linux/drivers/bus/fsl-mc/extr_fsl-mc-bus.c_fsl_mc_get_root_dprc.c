
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device* parent; } ;


 scalar_t__ dev_is_fsl_mc (struct device*) ;

__attribute__((used)) static void fsl_mc_get_root_dprc(struct device *dev,
     struct device **root_dprc_dev)
{
 if (!dev) {
  *root_dprc_dev = ((void*)0);
 } else if (!dev_is_fsl_mc(dev)) {
  *root_dprc_dev = ((void*)0);
 } else {
  *root_dprc_dev = dev;
  while (dev_is_fsl_mc((*root_dprc_dev)->parent))
   *root_dprc_dev = (*root_dprc_dev)->parent;
 }
}
