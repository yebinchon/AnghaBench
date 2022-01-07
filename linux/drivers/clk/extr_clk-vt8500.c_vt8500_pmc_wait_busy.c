
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VT8500_PMC_BUSY_MASK ;
 int cpu_relax () ;
 int pmc_base ;
 int readl (int ) ;

__attribute__((used)) static void vt8500_pmc_wait_busy(void)
{
 while (readl(pmc_base) & VT8500_PMC_BUSY_MASK)
  cpu_relax();
}
