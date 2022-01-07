
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct clk_hw {int dummy; } ;


 unsigned long BIT (int) ;
 unsigned long MHZ ;
 int do_div (unsigned long,unsigned long) ;

__attribute__((used)) static long pll_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 unsigned long *parent_rate)
{
 unsigned long fin, nf, nr, od;
 u64 dividend;





 rate = rate - rate % MHZ;

 nf = rate / MHZ;
 if (nf > BIT(13))
  nf = BIT(13);
 if (nf < 1)
  nf = 1;

 fin = *parent_rate;

 nr = fin / MHZ;
 if (nr > BIT(6))
  nr = BIT(6);
 od = 1;

 dividend = (u64)fin * nf;
 do_div(dividend, nr * od);

 return (long)dividend;
}
