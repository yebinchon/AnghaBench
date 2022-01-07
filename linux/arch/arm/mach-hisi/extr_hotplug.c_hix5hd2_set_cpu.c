
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int CRG20_CPU1_RESET ;
 scalar_t__ HIX5HD2_PERI_CRG20 ;
 scalar_t__ HIX5HD2_PERI_PMC0 ;
 int PMC0_CPU1_PMC_ENABLE ;
 int PMC0_CPU1_POWERDOWN ;
 int PMC0_CPU1_WAIT_MTCOMS_ACK ;
 scalar_t__ ctrl_base ;
 int hix5hd2_hotplug_init () ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

void hix5hd2_set_cpu(int cpu, bool enable)
{
 u32 val = 0;

 if (!ctrl_base)
  if (!hix5hd2_hotplug_init())
   BUG();

 if (enable) {

  val = readl_relaxed(ctrl_base + HIX5HD2_PERI_PMC0);
  val &= ~(PMC0_CPU1_WAIT_MTCOMS_ACK | PMC0_CPU1_POWERDOWN);
  val |= PMC0_CPU1_PMC_ENABLE;
  writel_relaxed(val, ctrl_base + HIX5HD2_PERI_PMC0);

  val = readl_relaxed(ctrl_base + HIX5HD2_PERI_CRG20);
  val &= ~CRG20_CPU1_RESET;
  writel_relaxed(val, ctrl_base + HIX5HD2_PERI_CRG20);
 } else {

  val = readl_relaxed(ctrl_base + HIX5HD2_PERI_PMC0);
  val |= PMC0_CPU1_PMC_ENABLE | PMC0_CPU1_POWERDOWN;
  val &= ~PMC0_CPU1_WAIT_MTCOMS_ACK;
  writel_relaxed(val, ctrl_base + HIX5HD2_PERI_PMC0);


  val = readl_relaxed(ctrl_base + HIX5HD2_PERI_CRG20);
  val |= CRG20_CPU1_RESET;
  writel_relaxed(val, ctrl_base + HIX5HD2_PERI_CRG20);
 }
}
