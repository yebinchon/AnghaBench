
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct palmas_clock_info {unsigned int ext_control_pin; } ;
struct device_node {int dummy; } ;





 unsigned int PALMAS_EXT_CONTROL_ENABLE1 ;
 unsigned int PALMAS_EXT_CONTROL_ENABLE2 ;
 unsigned int PALMAS_EXT_CONTROL_NSLEEP ;
 int dev_warn (TYPE_1__*,char*,struct device_node*,unsigned int) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;

__attribute__((used)) static void palmas_clks_get_clk_data(struct platform_device *pdev,
         struct palmas_clock_info *cinfo)
{
 struct device_node *node = pdev->dev.of_node;
 unsigned int prop;
 int ret;

 ret = of_property_read_u32(node, "ti,external-sleep-control",
       &prop);
 if (ret)
  return;

 switch (prop) {
 case 130:
  prop = PALMAS_EXT_CONTROL_ENABLE1;
  break;
 case 129:
  prop = PALMAS_EXT_CONTROL_ENABLE2;
  break;
 case 128:
  prop = PALMAS_EXT_CONTROL_NSLEEP;
  break;
 default:
  dev_warn(&pdev->dev, "%pOFn: Invalid ext control option: %u\n",
    node, prop);
  prop = 0;
  break;
 }
 cinfo->ext_control_pin = prop;
}
