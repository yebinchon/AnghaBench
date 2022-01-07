
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cr4; } ;


 unsigned long X86_CR4_PCIDE ;
 int X86_FEATURE_PCID ;
 unsigned long __read_cr4 () ;
 int __write_cr4 (unsigned long) ;
 scalar_t__ boot_cpu_has (int ) ;
 TYPE_1__ cpu_tlbstate ;
 unsigned long cr4_pinned_bits ;
 int cr_pinning ;
 scalar_t__ static_branch_likely (int *) ;
 int this_cpu_write (int ,unsigned long) ;

void cr4_init(void)
{
 unsigned long cr4 = __read_cr4();

 if (boot_cpu_has(X86_FEATURE_PCID))
  cr4 |= X86_CR4_PCIDE;
 if (static_branch_likely(&cr_pinning))
  cr4 |= cr4_pinned_bits;

 __write_cr4(cr4);


 this_cpu_write(cpu_tlbstate.cr4, cr4);
}
