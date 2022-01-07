
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct boot_e820_entry {unsigned long addr; scalar_t__ type; unsigned long size; } ;
struct TYPE_3__ {int efi_loader_signature; } ;
struct TYPE_4__ {int e820_entries; struct boot_e820_entry* e820_table; TYPE_1__ efi_info; } ;


 unsigned long BIOS_START_MAX ;
 unsigned long BIOS_START_MIN ;
 scalar_t__ E820_TYPE_RAM ;
 int EFI32_LOADER_SIGNATURE ;
 int EFI64_LOADER_SIGNATURE ;
 int PAGE_SIZE ;
 unsigned long TRAMPOLINE_32BIT_SIZE ;
 TYPE_2__* boot_params ;
 unsigned long round_down (unsigned long,int ) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static unsigned long find_trampoline_placement(void)
{
 unsigned long bios_start = 0, ebda_start = 0;
 struct boot_e820_entry *entry;
 char *signature;
 int i;
 signature = (char *)&boot_params->efi_info.efi_loader_signature;
 if (strncmp(signature, EFI32_LOADER_SIGNATURE, 4) &&
     strncmp(signature, EFI64_LOADER_SIGNATURE, 4)) {
  ebda_start = *(unsigned short *)0x40e << 4;
  bios_start = *(unsigned short *)0x413 << 10;
 }

 if (bios_start < BIOS_START_MIN || bios_start > BIOS_START_MAX)
  bios_start = BIOS_START_MAX;

 if (ebda_start > BIOS_START_MIN && ebda_start < bios_start)
  bios_start = ebda_start;

 bios_start = round_down(bios_start, PAGE_SIZE);


 for (i = boot_params->e820_entries - 1; i >= 0; i--) {
  unsigned long new = bios_start;

  entry = &boot_params->e820_table[i];


  if (bios_start <= entry->addr)
   continue;


  if (entry->type != E820_TYPE_RAM)
   continue;


  if (bios_start > entry->addr + entry->size)
   new = entry->addr + entry->size;


  new = round_down(new, PAGE_SIZE);


  if (new - TRAMPOLINE_32BIT_SIZE < entry->addr)
   continue;


  if (new - TRAMPOLINE_32BIT_SIZE > bios_start)
   break;

  bios_start = new;
  break;
 }


 return bios_start - TRAMPOLINE_32BIT_SIZE;
}
