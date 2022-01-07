
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pa_symbol (int ) ;
 int __raw_writel (int,scalar_t__) ;
 int mcpm_entry_point ;
 scalar_t__ ns_sram_base_addr ;

__attribute__((used)) static void exynos_mcpm_setup_entry_point(void)
{






 __raw_writel(0xe59f0000, ns_sram_base_addr);
 __raw_writel(0xe12fff10, ns_sram_base_addr + 4);
 __raw_writel(__pa_symbol(mcpm_entry_point), ns_sram_base_addr + 8);
}
