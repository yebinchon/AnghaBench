
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU0_SUPPORT_HOTPLUG_MAGIC0 ;
 int CPU0_SUPPORT_HOTPLUG_MAGIC1 ;
 scalar_t__ sram_b_smp_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_cpu0_hotplug_support_set(bool enable)
{
 if (enable) {
  writel(CPU0_SUPPORT_HOTPLUG_MAGIC0, sram_b_smp_base);
  writel(CPU0_SUPPORT_HOTPLUG_MAGIC1, sram_b_smp_base + 0x4);
 } else {
  writel(0x0, sram_b_smp_base);
  writel(0x0, sram_b_smp_base + 0x4);
 }
}
