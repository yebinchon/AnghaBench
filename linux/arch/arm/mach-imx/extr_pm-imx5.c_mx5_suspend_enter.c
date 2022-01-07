
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;
 int IMX5_DEFAULT_CPU_IDLE_STATE ;
 scalar_t__ MXC_SRPG_EMPGC0_SRPGCR ;
 scalar_t__ MXC_SRPG_EMPGC1_SRPGCR ;


 int STOP_POWER_OFF ;
 int cpu_do_idle () ;
 int flush_cache_all () ;
 scalar_t__ gpc_base ;
 int imx5_suspend_in_ocram_fn (int ) ;
 int imx_writel (int ,scalar_t__) ;
 int local_flush_tlb_all () ;
 int mx5_cpu_lp_set (int ) ;
 int suspend_ocram_base ;

__attribute__((used)) static int mx5_suspend_enter(suspend_state_t state)
{
 switch (state) {
 case 129:
  mx5_cpu_lp_set(STOP_POWER_OFF);
  break;
 case 128:

  break;
 default:
  return -EINVAL;
 }

 if (state == 129) {
  local_flush_tlb_all();
  flush_cache_all();


  imx_writel(0, gpc_base + MXC_SRPG_EMPGC0_SRPGCR);
  imx_writel(0, gpc_base + MXC_SRPG_EMPGC1_SRPGCR);

  if (imx5_suspend_in_ocram_fn)
   imx5_suspend_in_ocram_fn(suspend_ocram_base);
  else
   cpu_do_idle();

 } else {
  cpu_do_idle();
 }


 mx5_cpu_lp_set(IMX5_DEFAULT_CPU_IDLE_STATE);
 return 0;
}
