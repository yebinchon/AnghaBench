
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned long**) ;
 unsigned long EFI_INVALID_TABLE_ADDR ;
 unsigned long** efi_tables ;

bool efi_is_table_address(unsigned long phys_addr)
{
 unsigned int i;

 if (phys_addr == EFI_INVALID_TABLE_ADDR)
  return 0;

 for (i = 0; i < ARRAY_SIZE(efi_tables); i++)
  if (*(efi_tables[i]) == phys_addr)
   return 1;

 return 0;
}
