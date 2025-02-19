
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int * name; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {int num_resources; TYPE_1__ dev; struct resource* resource; } ;
struct omap_hwmod {int flags; } ;
struct omap_device {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HWMOD_INIT_NO_IDLE ;
 scalar_t__ IS_ERR (struct omap_device*) ;
 int PTR_ERR (struct omap_device*) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,char const*) ;
 int * dev_name (TYPE_1__*) ;
 int dev_pm_domain_set (TYPE_1__*,int *) ;
 struct omap_hwmod** kcalloc (int,int,int ) ;
 int kfree (struct omap_hwmod**) ;
 int of_property_count_strings (struct device_node*,char*) ;
 int of_property_read_string_index (struct device_node*,char*,int,char const**) ;
 struct omap_device* omap_device_alloc (struct platform_device*,struct omap_hwmod**,int) ;
 int omap_device_enable (struct platform_device*) ;
 int omap_device_fail_pm_domain ;
 int omap_device_pm_domain ;
 struct omap_hwmod* omap_hwmod_lookup (char const*) ;
 int omap_hwmod_parse_module_range (int *,struct device_node*,struct resource*) ;
 int pm_runtime_set_active (TYPE_1__*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int omap_device_build_from_dt(struct platform_device *pdev)
{
 struct omap_hwmod **hwmods;
 struct omap_device *od;
 struct omap_hwmod *oh;
 struct device_node *node = pdev->dev.of_node;
 struct resource res;
 const char *oh_name;
 int oh_cnt, i, ret = 0;
 bool device_active = 0, skip_pm_domain = 0;

 oh_cnt = of_property_count_strings(node, "ti,hwmods");
 if (oh_cnt <= 0) {
  dev_dbg(&pdev->dev, "No 'hwmods' to build omap_device\n");
  return -ENODEV;
 }


 ret = of_property_read_string_index(node, "ti,hwmods", 0, &oh_name);
 if (!ret && (!strncmp("dma_system", oh_name, 10) ||
       !strncmp("dma", oh_name, 3)))
  skip_pm_domain = 1;


 if (!skip_pm_domain &&
     !omap_hwmod_parse_module_range(((void*)0), node, &res))
  return -ENODEV;

 hwmods = kcalloc(oh_cnt, sizeof(struct omap_hwmod *), GFP_KERNEL);
 if (!hwmods) {
  ret = -ENOMEM;
  goto odbfd_exit;
 }

 for (i = 0; i < oh_cnt; i++) {
  of_property_read_string_index(node, "ti,hwmods", i, &oh_name);
  oh = omap_hwmod_lookup(oh_name);
  if (!oh) {
   dev_err(&pdev->dev, "Cannot lookup hwmod '%s'\n",
    oh_name);
   ret = -EINVAL;
   goto odbfd_exit1;
  }
  hwmods[i] = oh;
  if (oh->flags & HWMOD_INIT_NO_IDLE)
   device_active = 1;
 }

 od = omap_device_alloc(pdev, hwmods, oh_cnt);
 if (IS_ERR(od)) {
  dev_err(&pdev->dev, "Cannot allocate omap_device for :%s\n",
   oh_name);
  ret = PTR_ERR(od);
  goto odbfd_exit1;
 }


 for (i = 0; i < pdev->num_resources; i++) {
  struct resource *r = &pdev->resource[i];

  if (r->name == ((void*)0))
   r->name = dev_name(&pdev->dev);
 }

 if (!skip_pm_domain) {
  dev_pm_domain_set(&pdev->dev, &omap_device_pm_domain);
  if (device_active) {
   omap_device_enable(pdev);
   pm_runtime_set_active(&pdev->dev);
  }
 }

odbfd_exit1:
 kfree(hwmods);
odbfd_exit:

 if (ret)
  dev_pm_domain_set(&pdev->dev, &omap_device_fail_pm_domain);

 return ret;
}
