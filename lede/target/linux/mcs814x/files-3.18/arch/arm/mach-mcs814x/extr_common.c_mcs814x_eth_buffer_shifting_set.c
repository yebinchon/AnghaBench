
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ BUF_SHIFT_BIT ;
 scalar_t__ SYSDBG_SYSCTL_MAC ;
 scalar_t__ mcs814x_sysdbg_base ;
 scalar_t__ readb_relaxed (scalar_t__) ;
 int writeb_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mcs814x_eth_buffer_shifting_set(u8 value)
{
 u8 reg;

 reg = readb_relaxed(mcs814x_sysdbg_base + SYSDBG_SYSCTL_MAC);
 if (value)
  reg |= BUF_SHIFT_BIT;
 else
  reg &= ~BUF_SHIFT_BIT;
 writeb_relaxed(reg, mcs814x_sysdbg_base + SYSDBG_SYSCTL_MAC);
}
