
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_READ ;
 scalar_t__ ACPI_WRITE ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int CMOS_READ (int) ;
 int CMOS_WRITE (int ,int) ;
 int DIV_ROUND_UP (scalar_t__,int) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static acpi_status
acpi_cmos_rtc_space_handler(u32 function, acpi_physical_address address,
        u32 bits, u64 *value64,
        void *handler_context, void *region_context)
{
 int i;
 u8 *value = (u8 *)value64;

 if (address > 0xff || !value64)
  return AE_BAD_PARAMETER;

 if (function != ACPI_WRITE && function != ACPI_READ)
  return AE_BAD_PARAMETER;

 spin_lock_irq(&rtc_lock);

 for (i = 0; i < DIV_ROUND_UP(bits, 8); ++i, ++address, ++value)
  if (function == ACPI_READ)
   *value = CMOS_READ(address);
  else
   CMOS_WRITE(*value, address);

 spin_unlock_irq(&rtc_lock);

 return AE_OK;
}
