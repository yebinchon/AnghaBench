
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_div_table {int dummy; } ;


 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int _div_round_up (struct clk_div_table const*,unsigned long,unsigned long) ;

__attribute__((used)) static int _div_round(const struct clk_div_table *table,
        unsigned long parent_rate, unsigned long rate)
{
 if (!table)
  return DIV_ROUND_UP(parent_rate, rate);

 return _div_round_up(table, parent_rate, rate);
}
