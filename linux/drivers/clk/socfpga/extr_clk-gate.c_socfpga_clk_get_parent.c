
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;


 scalar_t__ CLKMGR_L4SRC ;
 scalar_t__ CLKMGR_PERPLL_SRC ;
 int SOCFPGA_L4_MP_CLK ;
 int SOCFPGA_L4_SP_CLK ;
 int SOCFPGA_MMC_CLK ;
 int SOCFPGA_NAND_CLK ;
 int SOCFPGA_NAND_X_CLK ;
 char* clk_hw_get_name (struct clk_hw*) ;
 scalar_t__ clk_mgr_base_addr ;
 int readl (scalar_t__) ;
 scalar_t__ streq (char const*,int ) ;

__attribute__((used)) static u8 socfpga_clk_get_parent(struct clk_hw *hwclk)
{
 u32 l4_src;
 u32 perpll_src;
 const char *name = clk_hw_get_name(hwclk);

 if (streq(name, SOCFPGA_L4_MP_CLK)) {
  l4_src = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
  return l4_src &= 0x1;
 }
 if (streq(name, SOCFPGA_L4_SP_CLK)) {
  l4_src = readl(clk_mgr_base_addr + CLKMGR_L4SRC);
  return !!(l4_src & 2);
 }

 perpll_src = readl(clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
 if (streq(name, SOCFPGA_MMC_CLK))
  return perpll_src &= 0x3;
 if (streq(name, SOCFPGA_NAND_CLK) ||
     streq(name, SOCFPGA_NAND_X_CLK))
  return (perpll_src >> 2) & 3;


 return (perpll_src >> 4) & 3;

}
