
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int argument_list; } ;
union acpi_predefined_info {TYPE_3__ info; } ;
typedef scalar_t__ u32 ;
struct acpi_namespace_node {int flags; scalar_t__ type; TYPE_2__* object; } ;
struct TYPE_4__ {scalar_t__ param_count; } ;
struct TYPE_5__ {TYPE_1__ method; } ;


 int ACPI_INFO_PREDEFINED (int ) ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int ACPI_WARN_ALWAYS ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int ANOBJ_EVALUATED ;
 int ARG_COUNT_IS_MINIMUM ;
 scalar_t__ METHOD_GET_ARG_COUNT (int) ;
 int acpi_ut_get_type_name (scalar_t__) ;

void
acpi_ns_check_argument_count(char *pathname,
        struct acpi_namespace_node *node,
        u32 user_param_count,
        const union acpi_predefined_info *predefined)
{
 u32 aml_param_count;
 u32 required_param_count;

 if (node->flags & ANOBJ_EVALUATED) {
  return;
 }

 if (!predefined) {




  if (node->type != ACPI_TYPE_METHOD) {
   if (user_param_count) {
    ACPI_INFO_PREDEFINED((AE_INFO, pathname,
            ACPI_WARN_ALWAYS,
            "%u arguments were passed to a non-method ACPI object (%s)",
            user_param_count,
            acpi_ut_get_type_name
            (node->type)));
   }

   return;
  }
  aml_param_count = node->object->method.param_count;

  if (user_param_count < aml_param_count) {
   ACPI_WARN_PREDEFINED((AE_INFO, pathname,
           ACPI_WARN_ALWAYS,
           "Insufficient arguments - "
           "Caller passed %u, method requires %u",
           user_param_count,
           aml_param_count));
  } else if (user_param_count > aml_param_count) {
   ACPI_INFO_PREDEFINED((AE_INFO, pathname,
           ACPI_WARN_ALWAYS,
           "Excess arguments - "
           "Caller passed %u, method requires %u",
           user_param_count,
           aml_param_count));
  }

  return;
 }
 required_param_count =
     METHOD_GET_ARG_COUNT(predefined->info.argument_list);

 if (user_param_count < required_param_count) {
  ACPI_WARN_PREDEFINED((AE_INFO, pathname, ACPI_WARN_ALWAYS,
          "Insufficient arguments - "
          "Caller passed %u, ACPI requires %u",
          user_param_count, required_param_count));
 } else if ((user_param_count > required_param_count) &&
     !(predefined->info.argument_list & ARG_COUNT_IS_MINIMUM)) {
  ACPI_INFO_PREDEFINED((AE_INFO, pathname, ACPI_WARN_ALWAYS,
          "Excess arguments - "
          "Caller passed %u, ACPI requires %u",
          user_param_count, required_param_count));
 }
}
