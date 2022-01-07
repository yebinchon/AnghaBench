
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct restore_data_record {unsigned long jump_address; int cr3; int e820_digest; int jump_address_phys; int magic; } ;


 int CR3_PCID_MASK ;
 int EOVERFLOW ;
 int RESTORE_MAGIC ;
 int __pa_symbol (scalar_t__) ;
 int hibernation_e820_save (int ) ;
 int restore_cr3 ;
 scalar_t__ restore_registers ;

int arch_hibernation_header_save(void *addr, unsigned int max_size)
{
 struct restore_data_record *rdr = addr;

 if (max_size < sizeof(struct restore_data_record))
  return -EOVERFLOW;
 rdr->magic = RESTORE_MAGIC;
 rdr->jump_address = (unsigned long)restore_registers;
 rdr->jump_address_phys = __pa_symbol(restore_registers);
 rdr->cr3 = restore_cr3 & ~CR3_PCID_MASK;

 return hibernation_e820_save(rdr->e820_digest);
}
