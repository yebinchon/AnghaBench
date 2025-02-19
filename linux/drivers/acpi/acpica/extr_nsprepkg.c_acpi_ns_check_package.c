
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int type; size_t count1; size_t count2; int object_type2; int object_type1; } ;
struct TYPE_7__ {size_t count; int tail_object_type; int * object_type; } ;
union acpi_predefined_info {TYPE_6__ ret_info; TYPE_1__ ret_info3; } ;
struct TYPE_11__ {int length; } ;
struct TYPE_10__ {size_t count; union acpi_operand_object** elements; } ;
struct TYPE_9__ {int type; } ;
struct TYPE_8__ {int value; } ;
union acpi_operand_object {TYPE_5__ buffer; TYPE_4__ package; TYPE_3__ common; TYPE_2__ integer; } ;
typedef size_t u32 ;
struct acpi_evaluate_info {int node_flags; int full_pathname; union acpi_predefined_info* predefined; } ;
typedef int acpi_status ;


 int ACPI_DB_NAMES ;
 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_check_object_type (struct acpi_evaluate_info*,union acpi_operand_object**,int ,size_t) ;
 int acpi_ns_check_package_elements (struct acpi_evaluate_info*,union acpi_operand_object**,int ,size_t,int ,size_t,int ) ;
 int acpi_ns_check_package_list (struct acpi_evaluate_info*,union acpi_predefined_info const*,union acpi_operand_object**,size_t) ;
 int acpi_ns_custom_package (struct acpi_evaluate_info*,union acpi_operand_object**,size_t) ;
 int acpi_ns_remove_null_elements (struct acpi_evaluate_info*,int,union acpi_operand_object*) ;
 int acpi_ns_wrap_with_package (struct acpi_evaluate_info*,union acpi_operand_object*,union acpi_operand_object**) ;
 int ns_check_package ;

acpi_status
acpi_ns_check_package(struct acpi_evaluate_info *info,
        union acpi_operand_object **return_object_ptr)
{
 union acpi_operand_object *return_object = *return_object_ptr;
 const union acpi_predefined_info *package;
 union acpi_operand_object **elements;
 acpi_status status = AE_OK;
 u32 expected_count;
 u32 count;
 u32 i;

 ACPI_FUNCTION_NAME(ns_check_package);



 package = info->predefined + 1;

 ACPI_DEBUG_PRINT((ACPI_DB_NAMES,
     "%s Validating return Package of Type %X, Count %X\n",
     info->full_pathname, package->ret_info.type,
     return_object->package.count));





 acpi_ns_remove_null_elements(info, package->ret_info.type,
         return_object);



 elements = return_object->package.elements;
 count = return_object->package.count;





 if (!count) {
  if (package->ret_info.type == 138) {
   return (AE_OK);
  }

  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Return Package has no elements (empty)"));

  return (AE_AML_OPERAND_VALUE);
 }







 switch (package->ret_info.type) {
 case 128:

  status = acpi_ns_custom_package(info, elements, count);
  break;

 case 140:






  expected_count =
      package->ret_info.count1 + package->ret_info.count2;
  if (count < expected_count) {
   goto package_too_small;
  } else if (count > expected_count) {
   ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
       "%s: Return Package is larger than needed - "
       "found %u, expected %u\n",
       info->full_pathname, count,
       expected_count));
  }



  status = acpi_ns_check_package_elements(info, elements,
       package->ret_info.
       object_type1,
       package->ret_info.
       count1,
       package->ret_info.
       object_type2,
       package->ret_info.
       count2, 0);
  break;

 case 138:




  for (i = 0; i < count; i++) {
   status = acpi_ns_check_object_type(info, elements,
          package->ret_info.
          object_type1, i);
   if (ACPI_FAILURE(status)) {
    return (status);
   }

   elements++;
  }
  break;

 case 139:







  expected_count = package->ret_info3.count;
  if (count < expected_count) {
   goto package_too_small;
  }



  for (i = 0; i < count; i++) {
   if (i < package->ret_info3.count) {



    status =
        acpi_ns_check_object_type(info, elements,
             package->
             ret_info3.
             object_type[i],
             i);
    if (ACPI_FAILURE(status)) {
     return (status);
    }
   } else {


    status =
        acpi_ns_check_object_type(info, elements,
             package->
             ret_info3.
             tail_object_type,
             i);
    if (ACPI_FAILURE(status)) {
     return (status);
    }
   }

   elements++;
  }
  break;

 case 131:



  status =
      acpi_ns_check_object_type(info, elements,
           ACPI_RTYPE_INTEGER, 0);
  if (ACPI_FAILURE(status)) {
   return (status);
  }

  elements++;
  count--;



  status =
      acpi_ns_check_package_list(info, package, elements, count);
  break;

 case 132:



  status =
      acpi_ns_check_object_type(info, elements,
           ACPI_RTYPE_INTEGER, 0);
  if (ACPI_FAILURE(status)) {
   return (status);
  }





  expected_count = (u32)(*elements)->integer.value;
  if (expected_count >= count) {
   goto package_too_small;
  }

  count = expected_count;
  elements++;



  status =
      acpi_ns_check_package_list(info, package, elements, count);
  break;

 case 137:
 case 135:
 case 133:
 case 136:
 case 134:
  if (*elements
      && ((*elements)->common.type != ACPI_TYPE_PACKAGE)) {



   status =
       acpi_ns_wrap_with_package(info, return_object,
            return_object_ptr);
   if (ACPI_FAILURE(status)) {
    return (status);
   }



   return_object = *return_object_ptr;
   elements = return_object->package.elements;
   count = 1;
  }



  status =
      acpi_ns_check_package_list(info, package, elements, count);
  break;

 case 129:




  break;

 case 130:



  if (count & 1) {
   expected_count = count + 1;
   goto package_too_small;
  }

  while (count > 0) {
   status = acpi_ns_check_object_type(info, elements,
          package->ret_info.
          object_type1, 0);
   if (ACPI_FAILURE(status)) {
    return (status);
   }



   if ((*elements)->buffer.length != 16) {
    ACPI_WARN_PREDEFINED((AE_INFO,
            info->full_pathname,
            info->node_flags,
            "Invalid length for UUID Buffer"));
    return (AE_AML_OPERAND_VALUE);
   }

   status = acpi_ns_check_object_type(info, elements + 1,
          package->ret_info.
          object_type2, 0);
   if (ACPI_FAILURE(status)) {
    return (status);
   }

   elements += 2;
   count -= 2;
  }
  break;

 default:



  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Invalid internal return type in table entry: %X",
          package->ret_info.type));

  return (AE_AML_INTERNAL);
 }

 return (status);

package_too_small:



 ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname, info->node_flags,
         "Return Package is too small - found %u elements, expected %u",
         count, expected_count));

 return (AE_AML_OPERAND_VALUE);
}
