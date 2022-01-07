
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct setup_data {int dummy; } ;
struct efi_boot_memmap {unsigned long* map_size; unsigned long* desc_size; unsigned long* buff_size; int * key_ptr; int * desc_ver; int ** map; } ;
struct boot_params {int e820_table; } ;
typedef scalar_t__ efi_status_t ;
typedef int efi_memory_desc_t ;
typedef unsigned long __u32 ;


 unsigned long ARRAY_SIZE (int ) ;
 scalar_t__ EFI_SUCCESS ;
 scalar_t__ alloc_e820ext (unsigned long,struct setup_data**,unsigned long*) ;
 scalar_t__ efi_get_memory_map (int ,struct efi_boot_memmap*) ;
 int sys_table ;

__attribute__((used)) static efi_status_t allocate_e820(struct boot_params *params,
      struct setup_data **e820ext,
      u32 *e820ext_size)
{
 unsigned long map_size, desc_size, buff_size;
 struct efi_boot_memmap boot_map;
 efi_memory_desc_t *map;
 efi_status_t status;
 __u32 nr_desc;

 boot_map.map = &map;
 boot_map.map_size = &map_size;
 boot_map.desc_size = &desc_size;
 boot_map.desc_ver = ((void*)0);
 boot_map.key_ptr = ((void*)0);
 boot_map.buff_size = &buff_size;

 status = efi_get_memory_map(sys_table, &boot_map);
 if (status != EFI_SUCCESS)
  return status;

 nr_desc = buff_size / desc_size;

 if (nr_desc > ARRAY_SIZE(params->e820_table)) {
  u32 nr_e820ext = nr_desc - ARRAY_SIZE(params->e820_table);

  status = alloc_e820ext(nr_e820ext, e820ext, e820ext_size);
  if (status != EFI_SUCCESS)
   return status;
 }

 return EFI_SUCCESS;
}
