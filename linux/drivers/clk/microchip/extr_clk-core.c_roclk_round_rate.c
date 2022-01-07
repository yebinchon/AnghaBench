
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int roclk_calc_div_trim (unsigned long,unsigned long,int *,int *) ;
 long roclk_calc_rate (unsigned long,int ,int ) ;

__attribute__((used)) static long roclk_round_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long *parent_rate)
{
 u32 rotrim, rodiv;


 roclk_calc_div_trim(rate, *parent_rate, &rodiv, &rotrim);


 return roclk_calc_rate(*parent_rate, rodiv, rotrim);
}
