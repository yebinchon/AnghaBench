
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int u32 ;


 int ACPI_RTYPE_ANY ;
 int ACPI_RTYPE_BUFFER ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_NONE ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_RTYPE_REFERENCE ;
 int ACPI_RTYPE_STRING ;






__attribute__((used)) static u32 acpi_ns_get_bitmapped_type(union acpi_operand_object *return_object)
{
 u32 return_btype;

 if (!return_object) {
  return (ACPI_RTYPE_NONE);
 }



 switch (return_object->common.type) {
 case 131:

  return_btype = ACPI_RTYPE_INTEGER;
  break;

 case 132:

  return_btype = ACPI_RTYPE_BUFFER;
  break;

 case 128:

  return_btype = ACPI_RTYPE_STRING;
  break;

 case 129:

  return_btype = ACPI_RTYPE_PACKAGE;
  break;

 case 130:

  return_btype = ACPI_RTYPE_REFERENCE;
  break;

 default:



  return_btype = ACPI_RTYPE_ANY;
  break;
 }

 return (return_btype);
}
