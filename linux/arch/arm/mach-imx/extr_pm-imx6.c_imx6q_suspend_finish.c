
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vbase; } ;
struct imx6_cpu_pm_info {TYPE_1__ l2_base; } ;


 int cpu_do_idle () ;
 int flush_cache_all () ;
 int imx6_suspend_in_ocram_fn (scalar_t__) ;
 int local_flush_tlb_all () ;
 scalar_t__ suspend_ocram_base ;

__attribute__((used)) static int imx6q_suspend_finish(unsigned long val)
{
 if (!imx6_suspend_in_ocram_fn) {
  cpu_do_idle();
 } else {




  local_flush_tlb_all();

  if (!((struct imx6_cpu_pm_info *)
   suspend_ocram_base)->l2_base.vbase)
   flush_cache_all();
  imx6_suspend_in_ocram_fn(suspend_ocram_base);
 }

 return 0;
}
