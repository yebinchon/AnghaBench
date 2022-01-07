
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int RSTMGR_MPUMODRST_CPU1 ;
 scalar_t__ SOCFPGA_A10_RSTMGR_MODMPURST ;
 int __pa_symbol (int ) ;
 int flush_cache_all () ;
 int memcpy (int ,int *,int) ;
 int outer_clean_range (int ,int) ;
 int phys_to_virt (int ) ;
 scalar_t__ rst_manager_base_addr ;
 int secondary_startup ;
 int secondary_trampoline ;
 int secondary_trampoline_end ;
 int smp_wmb () ;
 int socfpga_cpu1start_addr ;
 scalar_t__ sys_manager_base_addr ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int socfpga_a10_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 int trampoline_size = &secondary_trampoline_end - &secondary_trampoline;

 if (socfpga_cpu1start_addr) {
  writel(RSTMGR_MPUMODRST_CPU1, rst_manager_base_addr +
         SOCFPGA_A10_RSTMGR_MODMPURST);
  memcpy(phys_to_virt(0), &secondary_trampoline, trampoline_size);

  writel(__pa_symbol(secondary_startup),
         sys_manager_base_addr + (socfpga_cpu1start_addr & 0x00000fff));

  flush_cache_all();
  smp_wmb();
  outer_clean_range(0, trampoline_size);


  writel(0, rst_manager_base_addr + SOCFPGA_A10_RSTMGR_MODMPURST);
 }

 return 0;
}
