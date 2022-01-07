
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct restore_data_record {scalar_t__ magic; int e820_digest; int cr3; int jump_address_phys; int jump_address; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ RESTORE_MAGIC ;
 scalar_t__ hibernation_e820_mismatch (int ) ;
 int jump_address_phys ;
 int pr_crit (char*) ;
 int restore_cr3 ;
 int restore_jump_address ;

int arch_hibernation_header_restore(void *addr)
{
 struct restore_data_record *rdr = addr;

 if (rdr->magic != RESTORE_MAGIC) {
  pr_crit("Unrecognized hibernate image header format!\n");
  return -EINVAL;
 }

 restore_jump_address = rdr->jump_address;
 jump_address_phys = rdr->jump_address_phys;
 restore_cr3 = rdr->cr3;

 if (hibernation_e820_mismatch(rdr->e820_digest)) {
  pr_crit("Hibernate inconsistent memory map detected!\n");
  return -ENODEV;
 }

 return 0;
}
