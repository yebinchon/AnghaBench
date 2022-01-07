
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int dummy; } ;


 int MSR_IDT_FCR1 ;
 int X86_CR4_MCE ;
 int cr4_set_bits (int ) ;
 int machine_check_vector ;
 int pr_info (char*) ;
 int rdmsr (int ,int,int) ;
 int winchip_machine_check ;
 int wmb () ;
 int wrmsr (int ,int,int) ;

void winchip_mcheck_init(struct cpuinfo_x86 *c)
{
 u32 lo, hi;

 machine_check_vector = winchip_machine_check;

 wmb();

 rdmsr(MSR_IDT_FCR1, lo, hi);
 lo |= (1<<2);
 lo &= ~(1<<4);
 wrmsr(MSR_IDT_FCR1, lo, hi);

 cr4_set_bits(X86_CR4_MCE);

 pr_info("Winchip machine check reporting enabled on CPU#0.\n");
}
