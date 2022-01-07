
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gemini_pci {int map; } ;


 int GEMINI_GLOBAL_CLOCK_CONTROL ;
 unsigned int PCI_CLKRUN_EN ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_gemini_pci* to_pciclk (struct clk_hw*) ;

__attribute__((used)) static int gemini_pci_is_enabled(struct clk_hw *hw)
{
 struct clk_gemini_pci *pciclk = to_pciclk(hw);
 unsigned int val;

 regmap_read(pciclk->map, GEMINI_GLOBAL_CLOCK_CONTROL, &val);
 return !!(val & PCI_CLKRUN_EN);
}
