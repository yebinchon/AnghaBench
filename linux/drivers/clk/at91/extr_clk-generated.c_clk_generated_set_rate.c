
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long max; } ;
struct clk_generated {scalar_t__ gckdiv; TYPE_1__ range; } ;


 scalar_t__ DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int EINVAL ;
 scalar_t__ GENERATED_MAX_DIV ;
 struct clk_generated* to_clk_generated (struct clk_hw*) ;

__attribute__((used)) static int clk_generated_set_rate(struct clk_hw *hw,
      unsigned long rate,
      unsigned long parent_rate)
{
 struct clk_generated *gck = to_clk_generated(hw);
 u32 div;

 if (!rate)
  return -EINVAL;

 if (gck->range.max && rate > gck->range.max)
  return -EINVAL;

 div = DIV_ROUND_CLOSEST(parent_rate, rate);
 if (div > GENERATED_MAX_DIV + 1 || !div)
  return -EINVAL;

 gck->gckdiv = div - 1;
 return 0;
}
