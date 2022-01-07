
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {scalar_t__ module_pa; scalar_t__* offsets; int dev; } ;
struct resource {scalar_t__ start; } ;
typedef enum sysc_registers { ____Placeholder_sysc_registers } sysc_registers ;


 int EINVAL ;
 scalar_t__ ENODEV ;
 int IORESOURCE_MEM ;



 struct resource* platform_get_resource_byname (int ,int ,char const*) ;
 char** reg_names ;
 int sysc_check_quirk_16bit (struct sysc*,struct resource*) ;
 int to_platform_device (int ) ;

__attribute__((used)) static int sysc_parse_one(struct sysc *ddata, enum sysc_registers reg)
{
 struct resource *res;
 const char *name;

 switch (reg) {
 case 130:
 case 129:
 case 128:
  name = reg_names[reg];
  break;
 default:
  return -EINVAL;
 }

 res = platform_get_resource_byname(to_platform_device(ddata->dev),
        IORESOURCE_MEM, name);
 if (!res) {
  ddata->offsets[reg] = -ENODEV;

  return 0;
 }

 ddata->offsets[reg] = res->start - ddata->module_pa;
 if (reg == 130)
  sysc_check_quirk_16bit(ddata, res);

 return 0;
}
