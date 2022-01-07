
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SLCR_REBOOT_STATUS_OFFSET ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;
 scalar_t__ zynq_slcr_base ;

void zynq_slcr_cpu_state_write(int cpu, bool die)
{
 u32 state, mask;

 state = readl(zynq_slcr_base + SLCR_REBOOT_STATUS_OFFSET);
 mask = 1 << (31 - cpu);
 if (die)
  state |= mask;
 else
  state &= ~mask;
 writel(state, zynq_slcr_base + SLCR_REBOOT_STATUS_OFFSET);
}
