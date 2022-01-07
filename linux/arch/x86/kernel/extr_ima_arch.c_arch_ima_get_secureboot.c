
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum efi_secureboot_mode { ____Placeholder_efi_secureboot_mode } efi_secureboot_mode ;
struct TYPE_2__ {int secure_boot; } ;


 int EFI_BOOT ;
 TYPE_1__ boot_params ;
 scalar_t__ efi_enabled (int ) ;
 int efi_secureboot_mode_enabled ;
 int efi_secureboot_mode_unset ;
 int get_sb_mode () ;

bool arch_ima_get_secureboot(void)
{
 static enum efi_secureboot_mode sb_mode;
 static bool initialized;

 if (!initialized && efi_enabled(EFI_BOOT)) {
  sb_mode = boot_params.secure_boot;

  if (sb_mode == efi_secureboot_mode_unset)
   sb_mode = get_sb_mode();
  initialized = 1;
 }

 if (sb_mode == efi_secureboot_mode_enabled)
  return 1;
 else
  return 0;
}
