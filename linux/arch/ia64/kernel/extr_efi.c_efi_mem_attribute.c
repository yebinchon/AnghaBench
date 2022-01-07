
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int attribute; } ;
typedef TYPE_1__ efi_memory_desc_t ;


 int EFI_MEMORY_RUNTIME ;
 unsigned long efi_md_end (TYPE_1__*) ;
 TYPE_1__* efi_memory_descriptor (unsigned long) ;

u64
efi_mem_attribute (unsigned long phys_addr, unsigned long size)
{
 unsigned long end = phys_addr + size;
 efi_memory_desc_t *md = efi_memory_descriptor(phys_addr);
 u64 attr;

 if (!md)
  return 0;





 attr = md->attribute & ~EFI_MEMORY_RUNTIME;
 do {
  unsigned long md_end = efi_md_end(md);

  if (end <= md_end)
   return attr;

  md = efi_memory_descriptor(md_end);
  if (!md || (md->attribute & ~EFI_MEMORY_RUNTIME) != attr)
   return 0;
 } while (md);
 return 0;
}
