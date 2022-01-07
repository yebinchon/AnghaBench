
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int reg; } ;
struct socfpga_periph_clk {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;


 int CLK_MGR_FREE_MASK ;
 int CLK_MGR_FREE_SHIFT ;
 int SOCFPGA_MPU_FREE_CLK ;
 int SOCFPGA_NOC_FREE_CLK ;
 int SOCFPGA_SDMMC_FREE_CLK ;
 char* clk_hw_get_name (struct clk_hw*) ;
 int readl (int ) ;
 scalar_t__ streq (char const*,int ) ;
 struct socfpga_periph_clk* to_socfpga_periph_clk (struct clk_hw*) ;

__attribute__((used)) static u8 clk_periclk_get_parent(struct clk_hw *hwclk)
{
 struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(hwclk);
 u32 clk_src;
 const char *name = clk_hw_get_name(hwclk);

 clk_src = readl(socfpgaclk->hw.reg);
 if (streq(name, SOCFPGA_MPU_FREE_CLK) ||
     streq(name, SOCFPGA_NOC_FREE_CLK) ||
     streq(name, SOCFPGA_SDMMC_FREE_CLK))
  return (clk_src >> CLK_MGR_FREE_SHIFT) &
   CLK_MGR_FREE_MASK;
 else
  return 0;
}
