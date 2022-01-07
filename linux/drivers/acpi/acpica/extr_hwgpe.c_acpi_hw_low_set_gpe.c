
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct acpi_gpe_register_info {int enable_mask; int mask_for_run; int enable_address; } ;
struct acpi_gpe_event_info {struct acpi_gpe_register_info* register_info; } ;
typedef int acpi_status ;


 int ACPI_CLEAR_BIT (int ,int) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;



 int ACPI_SET_BIT (int ,int) ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int acpi_hw_get_gpe_register_bit (struct acpi_gpe_event_info*) ;
 int acpi_hw_read (int *,int *) ;
 int acpi_hw_write (int ,int *) ;

acpi_status
acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
{
 struct acpi_gpe_register_info *gpe_register_info;
 acpi_status status = AE_OK;
 u64 enable_mask;
 u32 register_bit;

 ACPI_FUNCTION_ENTRY();



 gpe_register_info = gpe_event_info->register_info;
 if (!gpe_register_info) {
  return (AE_NOT_EXIST);
 }



 status = acpi_hw_read(&enable_mask, &gpe_register_info->enable_address);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 register_bit = acpi_hw_get_gpe_register_bit(gpe_event_info);
 switch (action) {
 case 130:



  if (!(register_bit & gpe_register_info->enable_mask)) {
   return (AE_BAD_PARAMETER);
  }



 case 128:

  ACPI_SET_BIT(enable_mask, register_bit);
  break;

 case 129:

  ACPI_CLEAR_BIT(enable_mask, register_bit);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Invalid GPE Action, %u", action));
  return (AE_BAD_PARAMETER);
 }

 if (!(register_bit & gpe_register_info->mask_for_run)) {



  status =
      acpi_hw_write(enable_mask,
      &gpe_register_info->enable_address);
 }
 return (status);
}
