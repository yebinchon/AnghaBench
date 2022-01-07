
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; } ;
struct acpi_resource_io {int io_decode; int address_length; int minimum; } ;
struct acpi_resource_fixed_io {int address_length; int address; } ;
struct TYPE_2__ {struct acpi_resource_fixed_io fixed_io; struct acpi_resource_io io; } ;
struct acpi_resource {int type; TYPE_1__ data; } ;


 int ACPI_DECODE_10 ;


 int IORESOURCE_DISABLED ;
 int acpi_dev_get_ioresource (struct resource*,int ,int ,int ) ;

bool acpi_dev_resource_io(struct acpi_resource *ares, struct resource *res)
{
 struct acpi_resource_io *io;
 struct acpi_resource_fixed_io *fixed_io;

 switch (ares->type) {
 case 128:
  io = &ares->data.io;
  acpi_dev_get_ioresource(res, io->minimum,
     io->address_length,
     io->io_decode);
  break;
 case 129:
  fixed_io = &ares->data.fixed_io;
  acpi_dev_get_ioresource(res, fixed_io->address,
     fixed_io->address_length,
     ACPI_DECODE_10);
  break;
 default:
  res->flags = 0;
  return 0;
 }

 return !(res->flags & IORESOURCE_DISABLED);
}
