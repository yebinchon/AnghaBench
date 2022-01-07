
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NDS32_SR_INT_PEND ;
 int __nds32__mfsr (int ) ;
 int wake_mask ;

__attribute__((used)) static void nds32_suspend_cpu(void)
{
 while (!(__nds32__mfsr(NDS32_SR_INT_PEND) & wake_mask))
  __asm__ volatile ("standby no_wake_grant\n\t");
}
