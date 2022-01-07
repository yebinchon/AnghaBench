
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;


 scalar_t__ VT8500_PMSR_REG ;
 scalar_t__ pmc_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vt8500_restart(enum reboot_mode mode, const char *cmd)
{
 if (pmc_base)
  writel(1, pmc_base + VT8500_PMSR_REG);
}
