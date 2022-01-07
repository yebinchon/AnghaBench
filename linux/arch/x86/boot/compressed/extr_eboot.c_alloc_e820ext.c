
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct setup_data {int dummy; } ;
struct e820_entry {int dummy; } ;
typedef scalar_t__ efi_status_t ;


 int EFI_LOADER_DATA ;
 scalar_t__ EFI_SUCCESS ;
 int allocate_pool ;
 scalar_t__ efi_call_early (int ,int ,...) ;
 int free_pool ;

__attribute__((used)) static efi_status_t alloc_e820ext(u32 nr_desc, struct setup_data **e820ext,
      u32 *e820ext_size)
{
 efi_status_t status;
 unsigned long size;

 size = sizeof(struct setup_data) +
  sizeof(struct e820_entry) * nr_desc;

 if (*e820ext) {
  efi_call_early(free_pool, *e820ext);
  *e820ext = ((void*)0);
  *e820ext_size = 0;
 }

 status = efi_call_early(allocate_pool, EFI_LOADER_DATA,
    size, (void **)e820ext);
 if (status == EFI_SUCCESS)
  *e820ext_size = size;

 return status;
}
