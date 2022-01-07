
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int roclk_get_parent (struct clk_hw*) ;
 int roclk_set_rate_and_parent (struct clk_hw*,unsigned long,unsigned long,int ) ;

__attribute__((used)) static int roclk_set_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long parent_rate)
{
 u8 index = roclk_get_parent(hw);

 return roclk_set_rate_and_parent(hw, rate, parent_rate, index);
}
