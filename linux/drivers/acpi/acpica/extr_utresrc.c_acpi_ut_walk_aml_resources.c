
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct aml_resource_end_tag {int dummy; } ;
struct acpi_walk_state {int dummy; } ;
typedef int (* acpi_walk_aml_callback ) (int*,int,int,int,void**) ;
typedef int acpi_status ;
typedef int acpi_size ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_RESOURCE_NAME_END_TAG ;
 int AE_AML_NO_RESOURCE_END_TAG ;
 int AE_OK ;
 int acpi_ut_get_descriptor_length (int*) ;
 scalar_t__ acpi_ut_get_resource_type (int*) ;
 int acpi_ut_validate_resource (struct acpi_walk_state*,int*,int*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_walk_aml_resources ;

acpi_status
acpi_ut_walk_aml_resources(struct acpi_walk_state *walk_state,
      u8 *aml,
      acpi_size aml_length,
      acpi_walk_aml_callback user_function, void **context)
{
 acpi_status status;
 u8 *end_aml;
 u8 resource_index;
 u32 length;
 u32 offset = 0;
 u8 end_tag[2] = { 0x79, 0x00 };

 ACPI_FUNCTION_TRACE(ut_walk_aml_resources);



 if (aml_length < sizeof(struct aml_resource_end_tag)) {
  return_ACPI_STATUS(AE_AML_NO_RESOURCE_END_TAG);
 }



 end_aml = aml + aml_length;



 while (aml < end_aml) {



  status =
      acpi_ut_validate_resource(walk_state, aml, &resource_index);
  if (ACPI_FAILURE(status)) {




   return_ACPI_STATUS(status);
  }



  length = acpi_ut_get_descriptor_length(aml);



  if (user_function) {
   status =
       user_function(aml, length, offset, resource_index,
       context);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
  }



  if (acpi_ut_get_resource_type(aml) ==
      ACPI_RESOURCE_NAME_END_TAG) {




   if ((aml + 1) >= end_aml) {
    return_ACPI_STATUS(AE_AML_NO_RESOURCE_END_TAG);
   }
   if (!user_function) {
    *context = aml;
   }



   return_ACPI_STATUS(AE_OK);
  }

  aml += length;
  offset += length;
 }



 if (user_function) {



  (void)acpi_ut_validate_resource(walk_state, end_tag,
      &resource_index);
  status =
      user_function(end_tag, 2, offset, resource_index, context);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
 }

 return_ACPI_STATUS(AE_AML_NO_RESOURCE_END_TAG);
}
