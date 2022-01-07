
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_sam9260_slow {int regmap; } ;
struct clk_hw {int dummy; } ;


 unsigned int AT91_PMC_OSCSEL ;
 int AT91_PMC_SR ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_sam9260_slow* to_clk_sam9260_slow (struct clk_hw*) ;

__attribute__((used)) static u8 clk_sam9260_slow_get_parent(struct clk_hw *hw)
{
 struct clk_sam9260_slow *slowck = to_clk_sam9260_slow(hw);
 unsigned int status;

 regmap_read(slowck->regmap, AT91_PMC_SR, &status);

 return status & AT91_PMC_OSCSEL ? 1 : 0;
}
