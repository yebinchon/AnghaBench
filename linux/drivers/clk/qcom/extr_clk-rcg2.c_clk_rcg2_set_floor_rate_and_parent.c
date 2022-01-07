
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int FLOOR ;
 int __clk_rcg2_set_rate (struct clk_hw*,unsigned long,int ) ;

__attribute__((used)) static int clk_rcg2_set_floor_rate_and_parent(struct clk_hw *hw,
  unsigned long rate, unsigned long parent_rate, u8 index)
{
 return __clk_rcg2_set_rate(hw, rate, FLOOR);
}
