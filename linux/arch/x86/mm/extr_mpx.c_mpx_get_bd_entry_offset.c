
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {unsigned long x86_virt_bits; } ;


 unsigned long bd_entry_virt_space (struct mm_struct*) ;
 TYPE_1__ boot_cpu_data ;
 scalar_t__ is_64bit_mm (struct mm_struct*) ;

__attribute__((used)) static unsigned long mpx_get_bd_entry_offset(struct mm_struct *mm,
  unsigned long addr)
{
 if (is_64bit_mm(mm)) {
  int bd_entry_size = 8;



  addr &= ((1UL << boot_cpu_data.x86_virt_bits) - 1);
  return (addr / bd_entry_virt_space(mm)) * bd_entry_size;
 } else {
  int bd_entry_size = 4;



  return (addr / bd_entry_virt_space(mm)) * bd_entry_size;
 }







}
