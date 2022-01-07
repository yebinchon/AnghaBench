
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {unsigned long long x86_virt_bits; } ;


 unsigned long long MPX_BD_NR_ENTRIES_32 ;
 unsigned long long MPX_BD_NR_ENTRIES_64 ;
 TYPE_1__ boot_cpu_data ;
 int is_64bit_mm (struct mm_struct*) ;

__attribute__((used)) static inline unsigned long bd_entry_virt_space(struct mm_struct *mm)
{
 unsigned long long virt_space;
 unsigned long long GB = (1ULL << 30);





 if (!is_64bit_mm(mm))
  return (4ULL * GB) / MPX_BD_NR_ENTRIES_32;






 virt_space = (1ULL << boot_cpu_data.x86_virt_bits);
 return virt_space / MPX_BD_NR_ENTRIES_64;
}
