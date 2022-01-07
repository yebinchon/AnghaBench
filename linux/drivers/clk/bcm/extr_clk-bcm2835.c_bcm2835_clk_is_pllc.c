
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int clk_hw_get_name (struct clk_hw*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static bool
bcm2835_clk_is_pllc(struct clk_hw *hw)
{
 if (!hw)
  return 0;

 return strncmp(clk_hw_get_name(hw), "pllc", 4) == 0;
}
