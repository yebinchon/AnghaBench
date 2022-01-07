
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int LED_CFG_MASK ;
 scalar_t__ SYSDBG_BS2 ;
 scalar_t__ mcs814x_sysdbg_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void mcs814x_eth_led_cfg_set(u8 cfg)
{
 u32 reg;

 reg = readl_relaxed(mcs814x_sysdbg_base + SYSDBG_BS2);
 reg &= ~LED_CFG_MASK;
 reg |= cfg;
 writel_relaxed(reg, mcs814x_sysdbg_base + SYSDBG_BS2);
}
