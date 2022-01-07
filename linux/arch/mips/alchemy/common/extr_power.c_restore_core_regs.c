
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU1000_MEM_STADDR0 ;
 int AU1000_MEM_STADDR1 ;
 int AU1000_MEM_STADDR2 ;
 int AU1000_MEM_STADDR3 ;
 int AU1000_MEM_STCFG0 ;
 int AU1000_MEM_STCFG1 ;
 int AU1000_MEM_STCFG2 ;
 int AU1000_MEM_STCFG3 ;
 int AU1000_MEM_STTIME0 ;
 int AU1000_MEM_STTIME1 ;
 int AU1000_MEM_STTIME2 ;
 int AU1000_MEM_STTIME3 ;
 int AU1000_SYS_AUXPLL ;
 int AU1000_SYS_CLKSRC ;
 int AU1000_SYS_CPUPLL ;
 int AU1000_SYS_FREQCTRL0 ;
 int AU1000_SYS_FREQCTRL1 ;
 int AU1000_SYS_PINFUNC ;
 int alchemy_wrsmem (int ,int ) ;
 int alchemy_wrsys (int ,int ) ;
 int au1xxx_cpu_has_pll_wo () ;
 int ** sleep_static_memctlr ;
 int * sleep_sys_clocks ;
 int sleep_sys_pinfunc ;

__attribute__((used)) static void restore_core_regs(void)
{





 alchemy_wrsys(sleep_sys_clocks[0], AU1000_SYS_FREQCTRL0);
 alchemy_wrsys(sleep_sys_clocks[1], AU1000_SYS_FREQCTRL1);
 alchemy_wrsys(sleep_sys_clocks[2], AU1000_SYS_CLKSRC);
 alchemy_wrsys(sleep_sys_clocks[4], AU1000_SYS_AUXPLL);
 if (!au1xxx_cpu_has_pll_wo())
  alchemy_wrsys(sleep_sys_clocks[3], AU1000_SYS_CPUPLL);

 alchemy_wrsys(sleep_sys_pinfunc, AU1000_SYS_PINFUNC);


 alchemy_wrsmem(sleep_static_memctlr[0][0], AU1000_MEM_STCFG0);
 alchemy_wrsmem(sleep_static_memctlr[0][1], AU1000_MEM_STTIME0);
 alchemy_wrsmem(sleep_static_memctlr[0][2], AU1000_MEM_STADDR0);
 alchemy_wrsmem(sleep_static_memctlr[1][0], AU1000_MEM_STCFG1);
 alchemy_wrsmem(sleep_static_memctlr[1][1], AU1000_MEM_STTIME1);
 alchemy_wrsmem(sleep_static_memctlr[1][2], AU1000_MEM_STADDR1);
 alchemy_wrsmem(sleep_static_memctlr[2][0], AU1000_MEM_STCFG2);
 alchemy_wrsmem(sleep_static_memctlr[2][1], AU1000_MEM_STTIME2);
 alchemy_wrsmem(sleep_static_memctlr[2][2], AU1000_MEM_STADDR2);
 alchemy_wrsmem(sleep_static_memctlr[3][0], AU1000_MEM_STCFG3);
 alchemy_wrsmem(sleep_static_memctlr[3][1], AU1000_MEM_STTIME3);
 alchemy_wrsmem(sleep_static_memctlr[3][2], AU1000_MEM_STADDR3);
}
