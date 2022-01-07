
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int argument_list; int expected_btypes; } ;
union acpi_predefined_info {TYPE_3__ info; } ;
typedef scalar_t__ u32 ;
struct acpi_namespace_node {int flags; scalar_t__ type; TYPE_2__* object; } ;
struct TYPE_4__ {scalar_t__ param_count; } ;
struct TYPE_5__ {TYPE_1__ method; } ;


 int ACPI_BIOS_ERROR_PREDEFINED (int ) ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int ACPI_WARN_ALWAYS ;
 int AE_INFO ;
 int ANOBJ_EVALUATED ;
 int ARG_COUNT_IS_MINIMUM ;
 scalar_t__ METHOD_GET_ARG_COUNT (int) ;
 int acpi_ut_get_type_name (scalar_t__) ;

void
acpi_ns_check_acpi_compliance(char *pathname,
         struct acpi_namespace_node *node,
         const union acpi_predefined_info *predefined)
{
 u32 aml_param_count;
 u32 required_param_count;

 if (!predefined || (node->flags & ANOBJ_EVALUATED)) {
  return;
 }



 required_param_count =
     METHOD_GET_ARG_COUNT(predefined->info.argument_list);





 if (node->type != ACPI_TYPE_METHOD) {
  if (required_param_count > 0) {



   ACPI_BIOS_ERROR_PREDEFINED((AE_INFO, pathname,
          ACPI_WARN_ALWAYS,
          "Object (%s) must be a control method with %u arguments",
          acpi_ut_get_type_name(node->
           type),
          required_param_count));
  } else if (!required_param_count
      && !predefined->info.expected_btypes) {



   ACPI_BIOS_ERROR_PREDEFINED((AE_INFO, pathname,
          ACPI_WARN_ALWAYS,
          "Object (%s) must be a control method "
          "with no arguments and no return value",
          acpi_ut_get_type_name(node->
           type)));
  }

  return;
 }
 aml_param_count = node->object->method.param_count;

 if (aml_param_count < required_param_count) {
  ACPI_BIOS_ERROR_PREDEFINED((AE_INFO, pathname, ACPI_WARN_ALWAYS,
         "Insufficient arguments - "
         "ASL declared %u, ACPI requires %u",
         aml_param_count,
         required_param_count));
 } else if ((aml_param_count > required_param_count)
     && !(predefined->info.
   argument_list & ARG_COUNT_IS_MINIMUM)) {
  ACPI_BIOS_ERROR_PREDEFINED((AE_INFO, pathname, ACPI_WARN_ALWAYS,
         "Excess arguments - "
         "ASL declared %u, ACPI requires %u",
         aml_param_count,
         required_param_count));
 }
}
