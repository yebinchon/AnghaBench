
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 scalar_t__ BASEADDR_V7M_SCB ;
 scalar_t__ V7M_SCB_AIRCR ;
 int V7M_SCB_AIRCR_SYSRESETREQ ;
 int V7M_SCB_AIRCR_VECTKEY ;
 int __raw_writel (int,scalar_t__) ;
 int dsb () ;

void armv7m_restart(enum reboot_mode mode, const char *cmd)
{
 dsb();
 __raw_writel(V7M_SCB_AIRCR_VECTKEY | V7M_SCB_AIRCR_SYSRESETREQ,
   BASEADDR_V7M_SCB + V7M_SCB_AIRCR);
 dsb();
}
