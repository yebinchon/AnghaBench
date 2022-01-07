
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 long EINVAL ;

__attribute__((used)) static long vc5_pfd_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *parent_rate)
{
 unsigned long idiv;


 if (rate > 50000000)
  return -EINVAL;


 if (*parent_rate <= 50000000)
  return *parent_rate;

 idiv = DIV_ROUND_UP(*parent_rate, rate);
 if (idiv > 127)
  return -EINVAL;

 return *parent_rate / idiv;
}
