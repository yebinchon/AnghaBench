
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct clk_hw {int dummy; } ;


 unsigned long DTO_RESL_DOUBLE ;
 int do_div (unsigned long,unsigned long) ;

__attribute__((used)) static long dto_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 unsigned long *parent_rate)
{
 u64 dividend = rate * DTO_RESL_DOUBLE;

 do_div(dividend, *parent_rate);
 dividend *= *parent_rate;
 do_div(dividend, DTO_RESL_DOUBLE);

 return dividend;
}
