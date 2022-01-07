
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ rate; unsigned long (* get_rate ) () ;} ;


 int clk_good (struct clk*) ;
 unsigned long stub1 () ;
 scalar_t__ unlikely (int) ;

unsigned long clk_get_rate(struct clk *clk)
{
 if (unlikely(!clk_good(clk)))
  return 0;

 if (clk->rate != 0)
  return clk->rate;

 if (clk->get_rate != ((void*)0))
  return clk->get_rate();

 return 0;
}
