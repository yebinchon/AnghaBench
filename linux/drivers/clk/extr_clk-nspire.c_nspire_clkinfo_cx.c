
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nspire_clk_info {int base_clock; int base_cpu_ratio; int base_ahb_ratio; } ;


 int BASE_CPU ;
 int CPU_AHB ;
 int CX_BASE ;
 int CX_UNKNOWN ;
 int EXTRACT (int ,int ) ;
 int FIXED_BASE ;
 int MHZ ;

__attribute__((used)) static void nspire_clkinfo_cx(u32 val, struct nspire_clk_info *clk)
{
 if (EXTRACT(val, FIXED_BASE))
  clk->base_clock = 48 * MHZ;
 else
  clk->base_clock = 6 * EXTRACT(val, CX_BASE) * MHZ;

 clk->base_cpu_ratio = EXTRACT(val, BASE_CPU) * EXTRACT(val, CX_UNKNOWN);
 clk->base_ahb_ratio = clk->base_cpu_ratio * (EXTRACT(val, CPU_AHB) + 1);
}
