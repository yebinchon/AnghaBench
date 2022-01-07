
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clk_mclk {int is_mspro; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ U300_SYSCON_MMCR ;
 int U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE ;
 int U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE ;
 scalar_t__ U300_SYSCON_MMF0R ;
 int readw (scalar_t__) ;
 scalar_t__ syscon_vbase ;
 struct clk_mclk* to_mclk (struct clk_hw*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int mclk_clk_prepare(struct clk_hw *hw)
{
 struct clk_mclk *mclk = to_mclk(hw);
 u16 val;


 if (!mclk->is_mspro) {

  writew(0x0054U, syscon_vbase + U300_SYSCON_MMF0R);
  val = readw(syscon_vbase + U300_SYSCON_MMCR);

  val &= ~U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE;

  val &= ~U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE;
  writew(val, syscon_vbase + U300_SYSCON_MMCR);
 } else {
  val = readw(syscon_vbase + U300_SYSCON_MMCR);

  val &= ~U300_SYSCON_MMCR_MMC_FB_CLK_SEL_ENABLE;

  val |= U300_SYSCON_MMCR_MSPRO_FREQSEL_ENABLE;
  writew(val, syscon_vbase + U300_SYSCON_MMCR);
 }

 return 0;
}
