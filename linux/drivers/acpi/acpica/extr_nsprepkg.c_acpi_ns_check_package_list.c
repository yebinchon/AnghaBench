
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int type; scalar_t__ count1; scalar_t__ count2; int object_type1; int object_type2; } ;
struct TYPE_5__ {scalar_t__ count; int * object_type; } ;
union acpi_predefined_info {TYPE_3__ ret_info; TYPE_1__ ret_info2; } ;
struct TYPE_8__ {scalar_t__ count; union acpi_operand_object** elements; } ;
struct TYPE_6__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_4__ package; TYPE_2__ integer; } ;
typedef scalar_t__ u32 ;
struct acpi_evaluate_info {int node_flags; int full_pathname; union acpi_operand_object* parent_package; } ;
typedef int acpi_status ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_check_object_type (struct acpi_evaluate_info*,union acpi_operand_object**,int ,scalar_t__) ;
 int acpi_ns_check_package_elements (struct acpi_evaluate_info*,union acpi_operand_object**,int ,scalar_t__,int ,scalar_t__,int) ;

__attribute__((used)) static acpi_status
acpi_ns_check_package_list(struct acpi_evaluate_info *info,
      const union acpi_predefined_info *package,
      union acpi_operand_object **elements, u32 count)
{
 union acpi_operand_object *sub_package;
 union acpi_operand_object **sub_elements;
 acpi_status status;
 u32 expected_count;
 u32 i;
 u32 j;
 for (i = 0; i < count; i++) {
  sub_package = *elements;
  sub_elements = sub_package->package.elements;
  info->parent_package = sub_package;



  status = acpi_ns_check_object_type(info, &sub_package,
         ACPI_RTYPE_PACKAGE, i);
  if (ACPI_FAILURE(status)) {
   return (status);
  }



  info->parent_package = sub_package;
  switch (package->ret_info.type) {
  case 135:
  case 130:
  case 129:



   expected_count =
       package->ret_info.count1 + package->ret_info.count2;
   if (sub_package->package.count < expected_count) {
    goto package_too_small;
   }

   status =
       acpi_ns_check_package_elements(info, sub_elements,
          package->ret_info.
          object_type1,
          package->ret_info.
          count1,
          package->ret_info.
          object_type2,
          package->ret_info.
          count2, 0);
   if (ACPI_FAILURE(status)) {
    return (status);
   }
   break;

  case 132:




   expected_count =
       package->ret_info.count1 + package->ret_info.count2;
   if (sub_package->package.count < expected_count) {
    goto package_too_small;
   }

   status =
       acpi_ns_check_package_elements(info, sub_elements,
          package->ret_info.
          object_type1,
          package->ret_info.
          count1,
          package->ret_info.
          object_type2,
          sub_package->package.
          count -
          package->ret_info.
          count1, 0);
   if (ACPI_FAILURE(status)) {
    return (status);
   }
   break;

  case 128:



   break;

  case 133:



   expected_count = package->ret_info2.count;
   if (sub_package->package.count < expected_count) {
    goto package_too_small;
   }



   for (j = 0; j < expected_count; j++) {
    status =
        acpi_ns_check_object_type(info,
             &sub_elements[j],
             package->
             ret_info2.
             object_type[j],
             j);
    if (ACPI_FAILURE(status)) {
     return (status);
    }
   }
   break;

  case 131:



   expected_count = package->ret_info.count1;
   if (sub_package->package.count < expected_count) {
    goto package_too_small;
   }



   status =
       acpi_ns_check_package_elements(info, sub_elements,
          package->ret_info.
          object_type1,
          sub_package->package.
          count, 0, 0, 0);
   if (ACPI_FAILURE(status)) {
    return (status);
   }
   break;

  case 134:




   status = acpi_ns_check_object_type(info, sub_elements,
          ACPI_RTYPE_INTEGER,
          0);
   if (ACPI_FAILURE(status)) {
    return (status);
   }





   expected_count = (u32)(*sub_elements)->integer.value;
   if (sub_package->package.count < expected_count) {
    goto package_too_small;
   }

   if (sub_package->package.count <
       package->ret_info.count1) {
    expected_count = package->ret_info.count1;
    goto package_too_small;
   }

   if (expected_count == 0) {






    expected_count = sub_package->package.count;
    (*sub_elements)->integer.value = expected_count;
   }



   status =
       acpi_ns_check_package_elements(info,
          (sub_elements + 1),
          package->ret_info.
          object_type1,
          (expected_count - 1),
          0, 0, 1);
   if (ACPI_FAILURE(status)) {
    return (status);
   }
   break;

  default:

   ACPI_ERROR((AE_INFO, "Invalid Package type: %X",
        package->ret_info.type));
   return (AE_AML_INTERNAL);
  }

  elements++;
 }

 return (AE_OK);

package_too_small:



 ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname, info->node_flags,
         "Return SubPackage[%u] is too small - found %u elements, expected %u",
         i, sub_package->package.count, expected_count));

 return (AE_AML_OPERAND_VALUE);
}
