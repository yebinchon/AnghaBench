
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_3__ {char* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct of_device_id {int data; } ;
struct config_registers {int dummy; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 int buffer_icap_config ;
 int hwicap_of_match ;
 int hwicap_of_probe (struct platform_device*,int ) ;
 int hwicap_setup (TYPE_1__*,int ,struct resource*,int *,struct config_registers const*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int strcmp (char const*,char*) ;
 struct config_registers v2_config_registers ;
 struct config_registers v4_config_registers ;
 struct config_registers v5_config_registers ;
 struct config_registers v6_config_registers ;

__attribute__((used)) static int hwicap_drv_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct resource *res;
 const struct config_registers *regs;
 const char *family;

 match = of_match_device(hwicap_of_match, &pdev->dev);
 if (match)
  return hwicap_of_probe(pdev, match->data);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;




 regs = &v4_config_registers;
 family = pdev->dev.platform_data;

 if (family) {
  if (!strcmp(family, "virtex2p"))
   regs = &v2_config_registers;
  else if (!strcmp(family, "virtex4"))
   regs = &v4_config_registers;
  else if (!strcmp(family, "virtex5"))
   regs = &v5_config_registers;
  else if (!strcmp(family, "virtex6"))
   regs = &v6_config_registers;
 }

 return hwicap_setup(&pdev->dev, pdev->id, res,
   &buffer_icap_config, regs);
}
