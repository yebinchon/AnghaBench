
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_utmi {scalar_t__ regmap_pmc; scalar_t__ regmap_sfr; } ;
struct clk_hw {int dummy; } ;


 int AT91_CKGR_UCKR ;
 unsigned int AT91_PMC_BIASEN ;
 unsigned int AT91_PMC_UPLLCOUNT ;
 unsigned int AT91_PMC_UPLLEN ;
 int AT91_SFR_UTMICKTRIM ;
 unsigned int AT91_UTMICKTRIM_FREQ ;
 int EINVAL ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 int clk_utmi_ready (scalar_t__) ;
 int cpu_relax () ;
 int pr_err (char*) ;
 int regmap_update_bits (scalar_t__,int ,unsigned int,unsigned int) ;
 struct clk_utmi* to_clk_utmi (struct clk_hw*) ;

__attribute__((used)) static int clk_utmi_prepare(struct clk_hw *hw)
{
 struct clk_hw *hw_parent;
 struct clk_utmi *utmi = to_clk_utmi(hw);
 unsigned int uckr = AT91_PMC_UPLLEN | AT91_PMC_UPLLCOUNT |
       AT91_PMC_BIASEN;
 unsigned int utmi_ref_clk_freq;
 unsigned long parent_rate;






 hw_parent = clk_hw_get_parent(hw);
 parent_rate = clk_hw_get_rate(hw_parent);

 switch (parent_rate) {
 case 12000000:
  utmi_ref_clk_freq = 0;
  break;
 case 16000000:
  utmi_ref_clk_freq = 1;
  break;
 case 24000000:
  utmi_ref_clk_freq = 2;
  break;




 case 48000000:
  utmi_ref_clk_freq = 3;
  break;
 default:
  pr_err("UTMICK: unsupported mainck rate\n");
  return -EINVAL;
 }

 if (utmi->regmap_sfr) {
  regmap_update_bits(utmi->regmap_sfr, AT91_SFR_UTMICKTRIM,
       AT91_UTMICKTRIM_FREQ, utmi_ref_clk_freq);
 } else if (utmi_ref_clk_freq) {
  pr_err("UTMICK: sfr node required\n");
  return -EINVAL;
 }

 regmap_update_bits(utmi->regmap_pmc, AT91_CKGR_UCKR, uckr, uckr);

 while (!clk_utmi_ready(utmi->regmap_pmc))
  cpu_relax();

 return 0;
}
