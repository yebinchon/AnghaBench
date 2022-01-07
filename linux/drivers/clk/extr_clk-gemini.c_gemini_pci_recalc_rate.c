
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_gemini_pci {int map; } ;


 int GEMINI_GLOBAL_MISC_CONTROL ;
 int PCI_CLK_66MHZ ;
 int regmap_read (int ,int ,int*) ;
 struct clk_gemini_pci* to_pciclk (struct clk_hw*) ;

__attribute__((used)) static unsigned long gemini_pci_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct clk_gemini_pci *pciclk = to_pciclk(hw);
 u32 val;

 regmap_read(pciclk->map, GEMINI_GLOBAL_MISC_CONTROL, &val);
 if (val & PCI_CLK_66MHZ)
  return 66000000;
 return 33000000;
}
