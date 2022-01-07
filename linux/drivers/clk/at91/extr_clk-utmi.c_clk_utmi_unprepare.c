
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_utmi {int regmap_pmc; } ;
struct clk_hw {int dummy; } ;


 int AT91_CKGR_UCKR ;
 int AT91_PMC_UPLLEN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_utmi* to_clk_utmi (struct clk_hw*) ;

__attribute__((used)) static void clk_utmi_unprepare(struct clk_hw *hw)
{
 struct clk_utmi *utmi = to_clk_utmi(hw);

 regmap_update_bits(utmi->regmap_pmc, AT91_CKGR_UCKR,
      AT91_PMC_UPLLEN, 0);
}
