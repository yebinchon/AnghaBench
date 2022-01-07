
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;


 unsigned int CLK_DIS_WAIT_MASK ;
 int CLK_DIS_WAIT_SHIFT ;
 unsigned int CX_GMU_CBCR_SLEEP_MASK ;
 unsigned int CX_GMU_CBCR_SLEEP_SHIFT ;
 int CX_GMU_CBCR_WAKE_MASK ;
 int CX_GMU_CBCR_WAKE_SHIFT ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_fabia_pll_configure (int *,struct regmap*,int *) ;
 int gpu_cc_pll1 ;
 int gpu_cc_pll1_config ;
 int gpu_cc_sdm845_desc ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int regmap_update_bits (struct regmap*,int,unsigned int,int) ;

__attribute__((used)) static int gpu_cc_sdm845_probe(struct platform_device *pdev)
{
 struct regmap *regmap;
 unsigned int value, mask;

 regmap = qcom_cc_map(pdev, &gpu_cc_sdm845_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 clk_fabia_pll_configure(&gpu_cc_pll1, regmap, &gpu_cc_pll1_config);





 mask = CX_GMU_CBCR_WAKE_MASK << CX_GMU_CBCR_WAKE_SHIFT;
 mask |= CX_GMU_CBCR_SLEEP_MASK << CX_GMU_CBCR_SLEEP_SHIFT;
 value = 0xf << CX_GMU_CBCR_WAKE_SHIFT | 0xf << CX_GMU_CBCR_SLEEP_SHIFT;
 regmap_update_bits(regmap, 0x1098, mask, value);


 regmap_update_bits(regmap, 0x106c, CLK_DIS_WAIT_MASK,
      8 << CLK_DIS_WAIT_SHIFT);

 return qcom_cc_really_probe(pdev, &gpu_cc_sdm845_desc, regmap);
}
