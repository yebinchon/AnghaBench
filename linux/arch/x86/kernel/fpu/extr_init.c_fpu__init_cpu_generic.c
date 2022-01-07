
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int soft; } ;
struct TYPE_6__ {TYPE_1__ state; } ;
struct TYPE_7__ {TYPE_2__ fpu; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;


 unsigned long X86_CR0_EM ;
 unsigned long X86_CR0_TS ;
 unsigned long X86_CR4_OSFXSR ;
 unsigned long X86_CR4_OSXMMEXCPT ;
 int X86_FEATURE_FPU ;
 int X86_FEATURE_FXSR ;
 int X86_FEATURE_XMM ;
 scalar_t__ boot_cpu_has (int ) ;
 int cr4_set_bits (unsigned long) ;
 TYPE_4__* current ;
 int fpstate_init_soft (int *) ;
 unsigned long read_cr0 () ;
 int write_cr0 (unsigned long) ;

__attribute__((used)) static void fpu__init_cpu_generic(void)
{
 unsigned long cr0;
 unsigned long cr4_mask = 0;

 if (boot_cpu_has(X86_FEATURE_FXSR))
  cr4_mask |= X86_CR4_OSFXSR;
 if (boot_cpu_has(X86_FEATURE_XMM))
  cr4_mask |= X86_CR4_OSXMMEXCPT;
 if (cr4_mask)
  cr4_set_bits(cr4_mask);

 cr0 = read_cr0();
 cr0 &= ~(X86_CR0_TS|X86_CR0_EM);
 if (!boot_cpu_has(X86_FEATURE_FPU))
  cr0 |= X86_CR0_EM;
 write_cr0(cr0);







  asm volatile ("fninit");
}
