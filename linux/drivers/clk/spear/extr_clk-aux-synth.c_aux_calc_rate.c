
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct clk_hw {int dummy; } ;
struct clk_aux {struct aux_rate_tbl* rtbl; } ;
struct aux_rate_tbl {unsigned long xscale; unsigned long yscale; scalar_t__ eq; } ;


 struct clk_aux* to_clk_aux (struct clk_hw*) ;

__attribute__((used)) static unsigned long aux_calc_rate(struct clk_hw *hw, unsigned long prate,
  int index)
{
 struct clk_aux *aux = to_clk_aux(hw);
 struct aux_rate_tbl *rtbl = aux->rtbl;
 u8 eq = rtbl[index].eq ? 1 : 2;

 return (((prate / 10000) * rtbl[index].xscale) /
   (rtbl[index].yscale * eq)) * 10000;
}
