
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct x86_mapping_info {int dummy; } ;
typedef int pgd_t ;
typedef int efi_system_table_64_t ;
typedef int efi_system_table_32_t ;
struct TYPE_3__ {int efi_systab; scalar_t__ efi_systab_hi; } ;
struct TYPE_4__ {TYPE_1__ efi_info; } ;


 int EFI_64BIT ;
 int EFI_BOOT ;
 TYPE_2__ boot_params ;
 scalar_t__ efi_enabled (int ) ;
 int kernel_ident_mapping_init (struct x86_mapping_info*,int *,unsigned long,unsigned long) ;

__attribute__((used)) static int
map_efi_systab(struct x86_mapping_info *info, pgd_t *level4p)
{
 return 0;
}
