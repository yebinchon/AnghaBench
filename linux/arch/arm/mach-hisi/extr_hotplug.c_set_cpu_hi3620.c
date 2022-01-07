
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPU0_DBG_SRST_REQ_EN ;
 int CPU0_HPM_SRST_REQ_EN ;
 int CPU0_NEON_SRST_REQ_EN ;
 int CPU0_SRST_REQ_EN ;
 int CPU0_WFI_MASK_CFG ;
 int CPU2_ISO_CTRL ;
 scalar_t__ SCCPUCOREDIS ;
 scalar_t__ SCCPUCOREEN ;
 scalar_t__ SCCPURSTDIS ;
 scalar_t__ SCCPURSTEN ;
 scalar_t__ SCISODIS ;
 scalar_t__ SCISOEN ;
 scalar_t__ SCPERCTRL0 ;
 scalar_t__ SCPERPWRDIS ;
 scalar_t__ SCPERPWREN ;
 scalar_t__ ctrl_base ;
 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void set_cpu_hi3620(int cpu, bool enable)
{
 u32 val = 0;

 if (enable) {

  if ((cpu == 2) || (cpu == 3))
   writel_relaxed(CPU2_ISO_CTRL << (cpu - 2),
           ctrl_base + SCPERPWREN);
  udelay(100);


  writel_relaxed(0x01 << cpu, ctrl_base + SCCPUCOREEN);


  val = CPU0_DBG_SRST_REQ_EN | CPU0_NEON_SRST_REQ_EN
   | CPU0_SRST_REQ_EN;
  writel_relaxed(val << cpu, ctrl_base + SCCPURSTDIS);

  val |= CPU0_HPM_SRST_REQ_EN;
  writel_relaxed(val << cpu, ctrl_base + SCCPURSTEN);


  if ((cpu == 2) || (cpu == 3))
   writel_relaxed(CPU2_ISO_CTRL << (cpu - 2),
           ctrl_base + SCISODIS);
  udelay(1);


  val = readl_relaxed(ctrl_base + SCPERCTRL0);
  val &= ~(CPU0_WFI_MASK_CFG << cpu);
  writel_relaxed(val, ctrl_base + SCPERCTRL0);


  val = CPU0_DBG_SRST_REQ_EN | CPU0_NEON_SRST_REQ_EN
   | CPU0_SRST_REQ_EN | CPU0_HPM_SRST_REQ_EN;
  writel_relaxed(val << cpu, ctrl_base + SCCPURSTDIS);
 } else {

  val = readl_relaxed(ctrl_base + SCPERCTRL0);
  val |= (CPU0_WFI_MASK_CFG << cpu);
  writel_relaxed(val, ctrl_base + SCPERCTRL0);


  writel_relaxed(0x01 << cpu, ctrl_base + SCCPUCOREDIS);

  if ((cpu == 2) || (cpu == 3)) {

   writel_relaxed(CPU2_ISO_CTRL << (cpu - 2),
           ctrl_base + SCISOEN);
   udelay(1);
  }


  val = CPU0_DBG_SRST_REQ_EN | CPU0_NEON_SRST_REQ_EN
   | CPU0_SRST_REQ_EN | CPU0_HPM_SRST_REQ_EN;
  writel_relaxed(val << cpu, ctrl_base + SCCPURSTEN);

  if ((cpu == 2) || (cpu == 3)) {

   writel_relaxed(CPU2_ISO_CTRL << (cpu - 2),
           ctrl_base + SCPERPWRDIS);
   udelay(100);
  }
 }
}
