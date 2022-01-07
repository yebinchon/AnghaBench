
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct fsl_mc_device {int dev; } ;
struct fsl_mc_addr_translation_range {int mc_region_type; scalar_t__ start_mc_offset; scalar_t__ end_mc_offset; scalar_t__ start_phys_addr; } ;
struct fsl_mc {int num_translation_ranges; struct fsl_mc_addr_translation_range* translation_ranges; } ;
struct device {int parent; } ;
typedef scalar_t__ phys_addr_t ;
typedef enum dprc_region_type { ____Placeholder_dprc_region_type } dprc_region_type ;


 int EFAULT ;
 struct fsl_mc* dev_get_drvdata (int ) ;
 int fsl_mc_get_root_dprc (int *,struct device**) ;

__attribute__((used)) static int translate_mc_addr(struct fsl_mc_device *mc_dev,
        enum dprc_region_type mc_region_type,
        u64 mc_offset, phys_addr_t *phys_addr)
{
 int i;
 struct device *root_dprc_dev;
 struct fsl_mc *mc;

 fsl_mc_get_root_dprc(&mc_dev->dev, &root_dprc_dev);
 mc = dev_get_drvdata(root_dprc_dev->parent);

 if (mc->num_translation_ranges == 0) {



  *phys_addr = mc_offset;
  return 0;
 }

 for (i = 0; i < mc->num_translation_ranges; i++) {
  struct fsl_mc_addr_translation_range *range =
   &mc->translation_ranges[i];

  if (mc_region_type == range->mc_region_type &&
      mc_offset >= range->start_mc_offset &&
      mc_offset < range->end_mc_offset) {
   *phys_addr = range->start_phys_addr +
         (mc_offset - range->start_mc_offset);
   return 0;
  }
 }

 return -EFAULT;
}
