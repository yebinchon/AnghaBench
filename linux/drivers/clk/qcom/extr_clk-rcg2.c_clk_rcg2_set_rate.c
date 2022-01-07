
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int CEIL ;
 int __clk_rcg2_set_rate (struct clk_hw*,unsigned long,int ) ;

__attribute__((used)) static int clk_rcg2_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 return __clk_rcg2_set_rate(hw, rate, CEIL);
}
