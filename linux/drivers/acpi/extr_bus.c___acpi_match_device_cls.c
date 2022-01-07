
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hardware_id {int * id; } ;
struct acpi_device_id {int cls; int cls_msk; } ;


 int sprintf (char*,char*,int) ;
 scalar_t__ strncmp (char*,int *,int) ;

__attribute__((used)) static bool __acpi_match_device_cls(const struct acpi_device_id *id,
        struct acpi_hardware_id *hwid)
{
 int i, msk, byte_shift;
 char buf[3];

 if (!id->cls)
  return 0;


 for (i = 1; i <= 3; i++) {
  byte_shift = 8 * (3 - i);
  msk = (id->cls_msk >> byte_shift) & 0xFF;
  if (!msk)
   continue;

  sprintf(buf, "%02x", (id->cls >> byte_shift) & msk);
  if (strncmp(buf, &hwid->id[(i - 1) * 2], 2))
   return 0;
 }
 return 1;
}
