
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gemini_pci {int map; } ;


 int GEMINI_GLOBAL_CLOCK_CONTROL ;
 int PCI_CLKRUN_EN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_gemini_pci* to_pciclk (struct clk_hw*) ;

__attribute__((used)) static void gemini_pci_disable(struct clk_hw *hw)
{
 struct clk_gemini_pci *pciclk = to_pciclk(hw);

 regmap_update_bits(pciclk->map, GEMINI_GLOBAL_CLOCK_CONTROL,
      PCI_CLKRUN_EN, 0);
}
