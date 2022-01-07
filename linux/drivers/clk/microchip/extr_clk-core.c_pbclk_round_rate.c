
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int PB_DIV_MAX ;
 int PB_DIV_MIN ;
 long calc_best_divided_rate (unsigned long,unsigned long,int ,int ) ;

__attribute__((used)) static long pbclk_round_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long *parent_rate)
{
 return calc_best_divided_rate(rate, *parent_rate,
          PB_DIV_MAX, PB_DIV_MIN);
}
