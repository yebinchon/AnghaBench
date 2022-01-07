
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 scalar_t__ PXA_CORE_TURBO ;
 int pxa2xx_core_turbo_switch (int) ;

__attribute__((used)) static int clk_pxa25x_core_set_parent(struct clk_hw *hw, u8 index)
{
 if (index > PXA_CORE_TURBO)
  return -EINVAL;

 pxa2xx_core_turbo_switch(index == PXA_CORE_TURBO);

 return 0;
}
