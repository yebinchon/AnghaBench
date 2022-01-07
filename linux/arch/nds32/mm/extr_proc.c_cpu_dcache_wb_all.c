
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NDS32_CCTL_L1D_IX_RWD ;
 int __nds32__cctl_l1d_wball_one_lvl () ;
 int __nds32__cctlidx_read (int ,int ) ;

void cpu_dcache_wb_all(void)
{
 __nds32__cctl_l1d_wball_one_lvl();
 __nds32__cctlidx_read(NDS32_CCTL_L1D_IX_RWD,0);
}
