
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int samsung_s3c2410_pll_enable (struct clk_hw*,int,int) ;

__attribute__((used)) static void samsung_s3c2410_mpll_disable(struct clk_hw *hw)
{
 samsung_s3c2410_pll_enable(hw, 5, 0);
}
