
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct clk_factor_table {unsigned long mul; int val; scalar_t__ div; } ;


 int _get_table_maxval (struct clk_factor_table const*) ;
 int do_div (unsigned long,scalar_t__) ;

__attribute__((used)) static unsigned int _get_table_val(const struct clk_factor_table *table,
   unsigned long rate, unsigned long parent_rate)
{
 const struct clk_factor_table *clkt;
 int val = -1;
 u64 calc_rate;

 for (clkt = table; clkt->div; clkt++) {
  calc_rate = parent_rate * clkt->mul;
  do_div(calc_rate, clkt->div);

  if ((unsigned long)calc_rate <= rate) {
   val = clkt->val;
   break;
  }
 }

 if (val == -1)
  val = _get_table_maxval(table);

 return val;
}
