
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PMSU_BOOT_ADDR_REDIRECT_OFFSET (int) ;
 int __pa_symbol (void*) ;
 scalar_t__ pmsu_mp_base ;
 int writel (int ,scalar_t__) ;

void mvebu_pmsu_set_cpu_boot_addr(int hw_cpu, void *boot_addr)
{
 writel(__pa_symbol(boot_addr), pmsu_mp_base +
  PMSU_BOOT_ADDR_REDIRECT_OFFSET(hw_cpu));
}
