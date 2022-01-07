
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int flags; } ;
union acpi_parse_object {TYPE_2__ named; TYPE_1__ common; } ;
typedef int u32 ;


 int ACPI_PARSEOP_GENERIC ;

void acpi_ps_set_name(union acpi_parse_object *op, u32 name)
{



 if (op->common.flags & ACPI_PARSEOP_GENERIC) {
  return;
 }

 op->named.name = name;
}
