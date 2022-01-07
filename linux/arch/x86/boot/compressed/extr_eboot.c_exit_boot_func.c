
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exit_boot_struct {TYPE_1__* efi; } ;
struct efi_boot_memmap {scalar_t__* map; int * map_size; int * desc_ver; int * desc_size; } ;
typedef int efi_system_table_t ;
typedef int efi_status_t ;
typedef int __u32 ;
struct TYPE_2__ {unsigned long efi_systab; unsigned long efi_memmap; unsigned long efi_systab_hi; unsigned long efi_memmap_hi; int efi_memmap_size; int efi_memdesc_version; int efi_memdesc_size; int efi_loader_signature; } ;


 char* EFI32_LOADER_SIGNATURE ;
 char* EFI64_LOADER_SIGNATURE ;
 int EFI_SUCCESS ;
 scalar_t__ efi_is_64bit () ;
 int memcpy (int *,char const*,int) ;

__attribute__((used)) static efi_status_t exit_boot_func(efi_system_table_t *sys_table_arg,
       struct efi_boot_memmap *map,
       void *priv)
{
 const char *signature;
 struct exit_boot_struct *p = priv;

 signature = efi_is_64bit() ? EFI64_LOADER_SIGNATURE
       : EFI32_LOADER_SIGNATURE;
 memcpy(&p->efi->efi_loader_signature, signature, sizeof(__u32));

 p->efi->efi_systab = (unsigned long)sys_table_arg;
 p->efi->efi_memdesc_size = *map->desc_size;
 p->efi->efi_memdesc_version = *map->desc_ver;
 p->efi->efi_memmap = (unsigned long)*map->map;
 p->efi->efi_memmap_size = *map->map_size;






 return EFI_SUCCESS;
}
