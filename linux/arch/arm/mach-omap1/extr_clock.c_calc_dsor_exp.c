
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long rate; struct clk* parent; } ;


 int EIO ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int calc_dsor_exp(struct clk *clk, unsigned long rate)
{
 unsigned long realrate;
 struct clk * parent;
 unsigned dsor_exp;

 parent = clk->parent;
 if (unlikely(parent == ((void*)0)))
  return -EIO;

 realrate = parent->rate;
 for (dsor_exp=0; dsor_exp<4; dsor_exp++) {
  if (realrate <= rate)
   break;

  realrate /= 2;
 }

 return dsor_exp;
}
