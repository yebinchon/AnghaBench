
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int clk_rcg2_shared_set_rate (struct clk_hw*,unsigned long,unsigned long) ;

__attribute__((used)) static int clk_rcg2_shared_set_rate_and_parent(struct clk_hw *hw,
  unsigned long rate, unsigned long parent_rate, u8 index)
{
 return clk_rcg2_shared_set_rate(hw, rate, parent_rate);
}
