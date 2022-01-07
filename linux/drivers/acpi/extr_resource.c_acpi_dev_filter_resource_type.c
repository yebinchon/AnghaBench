
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resource_type; } ;
struct TYPE_4__ {TYPE_1__ address; } ;
struct acpi_resource {int type; TYPE_2__ data; } ;


 int ACPI_BUS_NUMBER_RANGE ;
 int ACPI_IO_RANGE ;
 int ACPI_MEMORY_RANGE ;
 unsigned long IORESOURCE_BUS ;
 unsigned long IORESOURCE_DMA ;
 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_IRQ ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_REG ;

int acpi_dev_filter_resource_type(struct acpi_resource *ares,
      unsigned long types)
{
 unsigned long type = 0;

 switch (ares->type) {
 case 129:
 case 128:
 case 133:
  type = IORESOURCE_MEM;
  break;
 case 131:
 case 134:
  type = IORESOURCE_IO;
  break;
 case 130:
 case 136:
  type = IORESOURCE_IRQ;
  break;
 case 138:
 case 135:
  type = IORESOURCE_DMA;
  break;
 case 132:
  type = IORESOURCE_REG;
  break;
 case 141:
 case 140:
 case 139:
 case 137:
  if (ares->data.address.resource_type == ACPI_MEMORY_RANGE)
   type = IORESOURCE_MEM;
  else if (ares->data.address.resource_type == ACPI_IO_RANGE)
   type = IORESOURCE_IO;
  else if (ares->data.address.resource_type ==
    ACPI_BUS_NUMBER_RANGE)
   type = IORESOURCE_BUS;
  break;
 default:
  break;
 }

 return (type & types) ? 0 : 1;
}
