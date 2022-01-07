
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;
typedef int acpi_event_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_NUM_FIXED_EVENTS ;
 int AE_INFO ;
 int AE_NOT_FOUND ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int acpi_get_event_status (scalar_t__,int *) ;
 int acpi_get_gpe_device (scalar_t__,int *) ;
 int acpi_get_gpe_status (int ,scalar_t__,int *) ;
 scalar_t__ num_gpes ;

__attribute__((used)) static int get_status(u32 index, acpi_event_status *ret,
        acpi_handle *handle)
{
 acpi_status status;

 if (index >= num_gpes + ACPI_NUM_FIXED_EVENTS)
  return -EINVAL;

 if (index < num_gpes) {
  status = acpi_get_gpe_device(index, handle);
  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, AE_NOT_FOUND,
     "Invalid GPE 0x%x", index));
   return -ENXIO;
  }
  status = acpi_get_gpe_status(*handle, index, ret);
 } else {
  status = acpi_get_event_status(index - num_gpes, ret);
 }
 if (ACPI_FAILURE(status))
  return -EIO;

 return 0;
}
